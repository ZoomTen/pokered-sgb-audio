SGB_wild::
	spc_BASEADDR $2b02
SGB_wild_song:
	spc_channel SGB_wild_pattern - SGB_wild
	dw 0	;end song

SGB_wild_pattern:
	spc_channel SGB_wild_0 - SGB_wild
	spc_channel SGB_wild_1 - SGB_wild
	spc_channel SGB_wild_2 - SGB_wild
	spc_channel SGB_wild_9 - SGB_wild
	dw 0
	dw 0
	dw 0
	dw 0

SGB_wild_0:
	spc_tempo	25
	spc_m_volume	248
	spc_set_echo	3, 7, 3
	spc_echo	7, $c0, $c0
	spc_inst	45
	spc_note_vel	C__, 5, 4,	7,13
	spc_note	B__, 4, 4
	spc_note	A#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	A#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	C__, 4, 4
	spc_note	B__, 3, 4
	spc_note	C__, 4, 4
	spc_note	B__, 3, 4
	spc_note	A#_, 3, 4
	spc_note	A__, 3, 4
	spc_note	A#_, 3, 4
	spc_note	B__, 3, 4
	spc_note	C__, 4, 4
	spc_note	C#_, 4, 4
	spc_inst	45
	spc_note	G__, 4, 8
	spc_rest	16
	spc_note	E__, 4, 8
	spc_rest	16
	spc_note	D#_, 4, 8
	spc_rest	40
	spc_note	C#_, 4, 8
	spc_rest	48
	spc_note	E__, 4, 8
	spc_rest	16
	spc_note	D#_, 4, 8
	spc_rest	32
	spc_note_vel	C#_, 4, 8,	7,6
	spc_rest	32
	spc_note_vel	G__, 4, 8,	7,13
	spc_rest	16
	spc_note	E__, 4, 8
	spc_rest	16
	spc_note	D#_, 4, 8
	spc_rest	40
	spc_note	C#_, 4, 8
	spc_rest	48
	spc_note	E__, 4, 8
	spc_rest	16
	spc_note	D#_, 4, 8
	spc_rest	32
	spc_note	C#_, 4, 40
	spc_inst	29
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	C__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	C__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	C__, 4, 4
	spc_note	B__, 3, 4
	spc_note	C__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	C#_, 4, 4
	spc_note	D__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	F__, 4, 4
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	E__, 4, 4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	D__, 4, 16
	spc_note	C__, 4, 16
	spc_note	D__, 4, 16
	spc_note	F__, 4, 16
	spc_note	E__, 4, 24
	spc_note	D__, 4, 24
	spc_note	F__, 4, 16
	spc_note	A__, 4, 64
	spc_note	G__, 4, 64
	spc_note	D__, 4, 16
	spc_note	C__, 4, 16
	spc_note	D__, 4, 16
	spc_note	F__, 4, 16
	spc_note	G__, 4, 24
	spc_note	A__, 4, 24
	spc_note	B__, 4, 16
	spc_note	C__, 5, 64
	spc_note_vel	G__, 5, 64,	7,5
	spc_inst	45
	spc_note_vel	C__, 4, 48,	7,13
	spc_note	C__, 4, 8
	spc_rest	8
	spc_note	D__, 4, 8
	spc_note	C__, 4, 8
	spc_rest	48
	spc_note	C#_, 4, 48
	spc_note	C#_, 4, 8
	spc_rest	8
	spc_note	F__, 4, 8
	spc_note_vel	D#_, 4, 8,	7,12
	spc_rest	16
	spc_note	C#_, 4, 32
	spc_inst	45
	spc_end


SGB_wild_1:
	spc_inst	45
	spc_inst	20
	spc_note_vel	G__, 5, 4,	7,13
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_note	G__, 5, 4
	spc_note	F#_, 5, 4
	spc_note	F__, 5, 4
	spc_note	G__, 6, 4
	spc_inst	45
	spc_note	G__, 5, 8
	spc_rest	16
	spc_note	G__, 4, 8
	spc_rest	16
	spc_note	G__, 4, 8
	spc_rest	40
	spc_note	G__, 4, 8
	spc_rest	48
	spc_note	G__, 4, 8
	spc_rest	16
	spc_note	G__, 4, 8
	spc_rest	32
	spc_note_vel	F#_, 4, 40,	7,10
	spc_note_vel	G__, 5, 8,	7,13
	spc_rest	16
	spc_note	G__, 4, 8
	spc_rest	16
	spc_note	G__, 4, 8
	spc_rest	40
	spc_note	G__, 4, 8
	spc_rest	48
	spc_note	G__, 4, 8
	spc_rest	16
	spc_note	G__, 4, 8
	spc_rest	32
	spc_note	G__, 4, 40
	spc_note	G__, 4, 24
	spc_note	F#_, 4, 24
	spc_note	E__, 4, 16
	spc_note	G__, 4, 24
	spc_note	A__, 4, 24
	spc_note	G__, 4, 16
	spc_note	G#_, 5, 48
	spc_note	G__, 5, 8
	spc_rest	8
	spc_note	G#_, 5, 8
	spc_note	G__, 5, 8
	spc_rest	16
	spc_note_vel	C#_, 6, 32,	7,12
	spc_note_vel	C__, 5, 24,	7,13
	spc_note	A#_, 4, 24
	spc_note	G#_, 4, 16
	spc_note	C#_, 5, 24
	spc_note	C__, 5, 24
	spc_note	A#_, 4, 16
	spc_note	F__, 5, 24
	spc_note	E__, 5, 24
	spc_note	D__, 5, 16
	spc_note	A#_, 4, 16
	spc_note	C__, 5, 16
	spc_note	D__, 5, 16
	spc_note	F__, 5, 16
	spc_note	G#_, 5, 64
	spc_note_vel	G#_, 5, 64,	7,12
	spc_note_vel	G__, 5, 64,	7,5
	spc_note_vel	G__, 5, 64,	7,13
	spc_note	F__, 4, 32
	spc_note	A#_, 4, 32
	spc_note	D__, 5, 32
	spc_note	F__, 5, 32
	spc_note	E__, 5, 64
	spc_note	E__, 5, 64
	spc_note	F__, 4, 32
	spc_note	A#_, 4, 32
	spc_note	D__, 5, 32
	spc_note	F__, 5, 32
	spc_note	G__, 5, 64
	spc_note_vel	C__, 6, 64,	7,4
	spc_note_vel	E__, 5, 48,	7,13
	spc_note	E__, 5, 8
	spc_rest	8
	spc_note	F__, 5, 8
	spc_note	E__, 5, 16
	spc_rest	40
	spc_note	F__, 5, 48
	spc_note	F__, 5, 8
	spc_rest	8
	spc_note	G#_, 5, 8
	spc_note_vel	G__, 5, 8,	7,11
	spc_rest	16
	spc_note_vel	F__, 5, 32,	7,13
	spc_inst	45
	spc_end


SGB_wild_2:
	spc_inst	13
	spc_note_vel	C#_, 3, 4,	7,13
	spc_rest	4
	spc_note	C#_, 3, 4
	spc_note	C__, 3, 4
	spc_note	D__, 3, 4
	spc_rest	4
	spc_note	D__, 3, 4
	spc_note	C__, 3, 4
	spc_note	D#_, 3, 4
	spc_rest	4
	spc_note	D#_, 3, 4
	spc_note	C__, 3, 4
	spc_note	E__, 3, 4
	spc_rest	4
	spc_note	E__, 3, 4
	spc_note	C__, 3, 4
	spc_note	F__, 3, 4
	spc_rest	4
	spc_note	F__, 3, 4
	spc_note	C__, 3, 4
	spc_note	F#_, 3, 4
	spc_rest	4
	spc_note	F#_, 3, 4
	spc_note	C__, 3, 4
	spc_note	G__, 3, 4
	spc_rest	4
	spc_note	G__, 3, 4
	spc_note	C__, 3, 4
	spc_note	A#_, 2, 8
	spc_note	B__, 2, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 16
	spc_note	G#_, 3, 8
	spc_note	A#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	G__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 16
	spc_note	G#_, 3, 8
	spc_note	A#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 16
	spc_note	G#_, 3, 8
	spc_note	A#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	G__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 16
	spc_note	G#_, 3, 8
	spc_note	A#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	G#_, 3, 48
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G#_, 3, 8
	spc_note	G__, 3, 8
	spc_rest	16
	spc_note	F__, 3, 8
	spc_note	E__, 3, 8
	spc_note	D__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 2, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	G#_, 3, 8
	spc_inst	13
	spc_end


SGB_wild_9:
	spc_inst	20
	spc_dnote_vel	kick_, kick_note_, 16,	7,13
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 4
	spc_dnote	kick_, kick_note_, 4
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 24
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 24
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 24
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	kick_, kick_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	kick_, kick_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_inst	20
	spc_end

SGB_wild_end::
