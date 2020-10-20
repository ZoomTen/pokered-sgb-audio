import mido
import argparse
from io import BytesIO, SEEK_END
import os
import math

def get_note_name(midi_note):
	note_names = [
		'C__', 'C#_', 'D__', 'D#_', 'E__', 'F__',
		'F#_', 'G__', 'G#_', 'A__', 'A#_', 'B__'
	]
	return [note_names[midi_note % 12], math.floor(midi_note / 12)]

if __name__ == '__main__':
	ap = argparse.ArgumentParser(
			description="Convert a standard MIDI file to the SBN format commonly used with the N-SPC engine. Currently does not support looping. MIDI channels 1-8 correspond to SNES tracks, while MIDI channel 10, if available, is added to the song if not using all 8 tracks.",
			epilog='example: mid2sbn.py intro.mid'
		)

	ap.add_argument('midi_file', help="The MIDI file to convert.")
	ap.add_argument('--timebase', '-t', type=int, default=6, help="Minimum ticks to interpolate. (default = 6)")
	ap.add_argument('--volume', '-v', type=int, default=248, help="Master volume of the entire track, range from 0-255. (default = 248).")
	ap.add_argument('--no-map', '-n', action='store_true', help="Don't map MIDI instruments to N-SPC instruments (use program change values as-is)")
	ap.add_argument('--base', '-b', default='0x2b00', help='Base address in hexadecimal (prefixed with 0x). Defaults to 0x2b00, the SGB music score entry point')
	ap.add_argument('--output', '-o', help="Output file name. If not set, the default is *.sbn.")

	args = ap.parse_args()

	# @helper functions
	single_byte = lambda x: x.to_bytes(1, byteorder='little')
	vel2index = lambda x: int(x/127*15)

	########################## options #############################################

	# Map MIDI instrument to N-SPC instrument
	ins_mappings = {
	# midi  n-spc
		56: 45,	# trumpet
		34: 13,	# bass
		48: 29, # string
	}

	# Transpose for each instrument
	ins_transpose = {
	# midi
		56: -12,	# trumpet
		48: -12,	# string
	}

	# Map drums to drum notes (this doesn't use the percussion stuff yet)
	drum_mappings = {
		#     which instrument to use     which note to play when the drum hits
		36: {'patch': 'kick_' , 'note':'kick_note_'}, # kick 1
		38: {'patch': 'snare_', 'note':'snare_note_'}, # snare
		39: {'patch': 'snare_', 'note':'snare_note_'}, # snare 2
	}

	################################################################################

	# Minimum timebase to use
	tbase = args.timebase

	# Track bins
	tracks = {
		'midi':{
			0: [],
			1: [],
			2: [],
			3: [],
			4: [],
			5: [],
			6: [],
			7: [],
			9: []
		},
		'snes':{
			0: [],
			1: [],
			2: [],
			3: [],
			4: [],
			5: [],
			6: [],
			7: [],
			9: []
		}
	}

	midi_file = mido.MidiFile(args.midi_file)
	num_ticks = midi_file.ticks_per_beat

	tempo = 0
	for i in midi_file:
		if hasattr(i, 'tempo'):
			# THIS WILL NOT WORK FOR DYNAMIC TEMPO
			tempo = (math.ceil(mido.tempo2bpm(i.tempo) / (3 * (tbase/12) * (480/num_ticks))))

	# set global tempo
	tracks['snes'][0].append('spc_tempo\t{}'.format(tempo))
	
	# set global volume
	tracks['snes'][0].append('spc_m_volume\t{}'.format(args.volume))

	# (hardcoded) global SNES echo/reverb
	tracks['snes'][0].append('spc_set_echo\t3, 7, 3')
	tracks['snes'][0].append('spc_echo\t7, $c0, $c0')

	# (hardcoded) vibrato test
	# tracks['snes'][0].append(b'\xe3\x0c\x15\x18')
	
	# enumerate all the events -> midi track bin
	last_msg = mido.Message('reset')	# dummy message... where's the null message?
	for track in midi_file.tracks:
		for event in track:
			for channel in range(10):
				if channel in tracks['midi'].keys():
					if hasattr(event, 'channel'):
						if event.channel == channel:
							if event == last_msg:
								pass
							else:
								# exclude certain events, this is still rough
								if event.dict()['type'] == 'control_change':
									pass
								elif event.dict()['type'] == 'pitchwheel':
									pass
								else:
									tracks['midi'][channel].append(event)
									last_msg = event
	
	# process the midi events -> snes track bin
	for track_number, pattern in tracks['midi'].items():
		vel = -1
		program = 0
		add_velocity_byte = False
		
		for e in pattern:
			midi_note = e.dict()
			
			if midi_note['type'] == 'program_change':
				# If the program change is delayed, reflect it on
				# the output
				if e.time > 0:
					div = int(e.time/tbase)
					
					# rests can be very long, so adjust accordingly
					rests = []
					if div > 0x7f:
						for add in range(int(div/0x7f)):
							rests.append(0x7f)
						rests.append(div % 0x7f)
					else:
						rests.append(div % 0x7f)
					for rest in rests:
						tracks['snes'][track_number].append(
							'spc_rest\t{}'.format(rest)
						)
				
				if args.no_map:
					program = midi_note['program']
					tracks['snes'][track_number].append(
							'spc_inst\t{}'.format(program)
						)
				else:
					if midi_note['program'] in ins_mappings.keys():
						tracks['snes'][track_number].append(
								'spc_inst\t{}'.format(ins_mappings[e.program])
							)
						program = midi_note['program']
					else:
						tracks['snes'][track_number].append(
								'spc_inst\t{}'.format(0x14)
							) # DEFAULT
			
			
			elif midi_note['type'] == 'note_on':
			# delay note
			# this also sets the velocity of the next note
				if e.time > 0:
					div = int(e.time/tbase)
					rests = []
					if div > 0x7f:
						for add in range(int(div/0x7f)):
							rests.append(0x7f)
						rests.append(div % 0x7f)
					else:
						rests.append(div % 0x7f)
					for rest in rests:
						if vel < 0:
							# if song just started (beginning delay)
							# set velocity at 100% quantization (0x70)
							vel = e.velocity
							tracks['snes'][track_number].append(
								'spc_rest_vel\t{},\t7,{}'.format(rest, vel2index(vel))
							)
						else:
							tracks['snes'][track_number].append(
								'spc_rest\t{}'.format(rest)
							)
				
				if vel != e.velocity:
					# change the velocity on note_off event
					vel = e.velocity
					add_velocity_byte = True
			
			
			elif midi_note['type'] == 'note_off':
			# actual note plays here
				div = int(e.time/tbase)
				
				# adjust for instrument
				hardcoded_transpose = 0
				if program in ins_transpose.keys():
					hardcoded_transpose = ins_transpose[program]
				
				note = (midi_note['note'] + hardcoded_transpose)
				
				# like rests, note lengths can also be very long
				# adjust likewise
				lengths = []
				if div > 0x7f:
					for add in range(int(div/0x7f)):
						lengths.append(0x7f)
					lengths.append(div % 0x7f)
				else:
					lengths.append(div % 0x7f)
				
				for len_i in range(len(lengths)):
					if len_i == 0:
					# note trigger
						if track_number == 9:
							drum_note = midi_note['note']
							if add_velocity_byte:
								if drum_note in drum_mappings.keys():
									tracks['snes'][track_number].append(
									'spc_dnote_vel\t{}, {}, {},\t7,{}'.format(
										drum_mappings[drum_note]['patch'],
										drum_mappings[drum_note]['note'],
										lengths[len_i],
										vel2index(vel)
									)
									)
								else:
									# no drum mapped
									tracks['snes'][track_number].append(
										'spc_rest_vel\t{},\t7,{}'.format(
											lengths[len_i],
											vel2index(vel))
									)
								add_velocity_byte = False
							else:
								if drum_note in drum_mappings.keys():
									tracks['snes'][track_number].append(
									'spc_dnote\t{}, {}, {}'.format(
										drum_mappings[drum_note]['patch'],
										drum_mappings[drum_note]['note'],
										lengths[len_i]
									)
									)
								else:
									# no drum mapped
									tracks['snes'][track_number].append(
									'spc_rest\t{}'.format(
										lengths[len_i]
									)
									)
						else:
							if add_velocity_byte:
								tracks['snes'][track_number].append(
									'spc_note_vel\t{}, {}, {},\t7,{}'.format(
										get_note_name(note)[0],
										get_note_name(note)[1],
										lengths[len_i],
										vel2index(vel)
									)
								)
								add_velocity_byte = False
							else:
								tracks['snes'][track_number].append(
									'spc_note\t{}, {}, {}'.format(
										get_note_name(note)[0],
										get_note_name(note)[1],
										lengths[len_i]
									)
								)
					else:
					# continue note
						tracks['snes'][track_number].append(
							'spc_tie\t{}'.format(lengths[len_i])
						)
		

	# create SBN file
	if args.output:
		out_name = args.output
	else:
		out_name = os.path.splitext(args.midi_file)[0]+'.asm'
	
	base_name = os.path.split(os.path.splitext(out_name)[0])[-1]
	
	with open(out_name, 'w') as output:
		start = int(args.base, 16)
		start += 2	# bypass song definition
		output.write('SGB_{}::\n'.format(base_name))
		output.write('\tspc_BASEADDR {}\n'.format('$'+hex(start)[2:]))
		#output.write('\tspc_channel SGB_{}_song - SGB_{}\n\n'.format(base_name, base_name))
		
		output.write('SGB_{}_song:\n'.format(base_name))
		output.write('\tspc_channel SGB_{}_pattern - SGB_{}\n'.format(base_name, base_name))
		output.write('\tdw 0\t;end song\n\n') # end song here
		
		output.write('SGB_{}_pattern:\n'.format(base_name))
		
		num_channels_written = 0
		for channel_num, channel_data in tracks['snes'].items():
			if len(channel_data) > 0:
				num_channels_written += 1
				output.write('\tspc_channel SGB_{}_{} - SGB_{}\n'.format(base_name, channel_num, base_name))
		
		if num_channels_written < 8:
			output.write('\tdw 0\n'*(8-num_channels_written))
			
	
		for channel_num, channel_data in tracks['snes'].items():
			if len(channel_data) > 0:
				output.write('\nSGB_{}_{}:\n\t'.format(base_name, channel_num))
				output.write('\n\t'.join(channel_data))
				output.write('\n\tspc_end\n\n')
			
		output.write('SGB_{}_end::\n'.format(base_name))
