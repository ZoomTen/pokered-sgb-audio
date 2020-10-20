;include "sbn_macros.asm"

SGB_placeholder::
	spc_BASEADDR $2b02

SGB_placeholder_song:
	spc_channel  SGB_placeholder_pattern - SGB_placeholder
	spc_seq_loop SGB_placeholder_song - SGB_placeholder

SGB_placeholder_pattern:
	spc_channel SGB_placeholder_0 - SGB_placeholder
	spc_channel SGB_placeholder_1 - SGB_placeholder
	spc_channel SGB_placeholder_2 - SGB_placeholder
	spc_channel SGB_placeholder_3 - SGB_placeholder
	spc_channel SGB_placeholder_9 - SGB_placeholder
	dw 0
	dw 0
	dw 0
	dw 0

SGB_placeholder_0:
	spc_tempo	10
	spc_m_volume	248
	spc_set_echo	3, 7, 3
	spc_echo	7, $c0, $c0
	spc_inst	19
	spc_volume	230
	spc_note_vel	E__, 5, 4,	7,11
	spc_note	G#_, 5, 4
	spc_note	F#_, 5, 4
	spc_note	A__, 5, 2
	spc_note	G#_, 5, 6
	spc_rest	4
	spc_note	E__, 5, 8
	spc_note	D#_, 5, 4
	spc_note	F#_, 5, 4
	spc_note	E__, 5, 4
	spc_note	G#_, 5, 2
	spc_note	F#_, 5, 6
	spc_rest	4
	spc_note	B__, 4, 8
	spc_note	C#_, 5, 4
	spc_note	D#_, 5, 4
	spc_note	E__, 5, 2
	spc_note	F#_, 5, 6
	spc_note	C#_, 5, 4
	spc_note	D#_, 5, 4
	spc_note	E__, 5, 2
	spc_note	F#_, 5, 6
	spc_note	F#_, 5, 8
	spc_note	E__, 5, 8
	spc_note	F#_, 5, 2
	spc_note	G#_, 5, 4
	spc_note	F#_, 5, 4
	spc_note	D#_, 5, 6
	spc_note	E__, 5, 4
	spc_note	G#_, 5, 4
	spc_note	F#_, 5, 4
	spc_note	A__, 5, 2
	spc_note	G#_, 5, 6
	spc_rest	4
	spc_note	E__, 5, 8
	spc_note	D#_, 5, 4
	spc_note	F#_, 5, 4
	spc_note	E__, 5, 4
	spc_note	G#_, 5, 2
	spc_note	F#_, 5, 6
	spc_rest	4
	spc_note	B__, 4, 8
	spc_note	C#_, 5, 4
	spc_note	D#_, 5, 4
	spc_note	E__, 5, 2
	spc_note	F#_, 5, 6
	spc_note	C#_, 5, 4
	spc_note	D#_, 5, 4
	spc_note	E__, 5, 2
	spc_note	F#_, 5, 6
	spc_note	F#_, 5, 8
	spc_note	E__, 5, 8
	spc_note	F#_, 5, 2
	spc_note	G#_, 5, 4
	spc_note	B__, 5, 4
	spc_note	F#_, 5, 6
	spc_note	C#_, 5, 8
	spc_note	D#_, 5, 8
	spc_note	E__, 5, 4
	spc_rest	4
	spc_note	G#_, 5, 4
	spc_rest	4
	spc_note	D#_, 5, 16
	spc_note	D#_, 5, 4
	spc_note	E__, 5, 4
	spc_note	D#_, 5, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 8
	spc_note	C#_, 5, 8
	spc_note	D#_, 5, 4
	spc_rest	4
	spc_note	F#_, 5, 4
	spc_rest	4
	spc_note	C#_, 5, 20
	spc_note	D#_, 5, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 2
	spc_note	F#_, 4, 2
	spc_rest	16
	spc_note	B__, 4, 4
	spc_note	A#_, 4, 4
	spc_note	B__, 4, 4
	spc_note	A__, 4, 2
	spc_note	G#_, 4, 2
	spc_rest	16
	spc_note	F#_, 4, 8
	spc_note	G#_, 4, 8
	spc_note	A__, 4, 8
	spc_note	C#_, 5, 8
	spc_note	D#_, 5, 32
	spc_end


SGB_placeholder_1:
	spc_inst	19
	spc_volume	230
	spc_note_vel	B__, 4, 2,	7,11
	spc_rest	2
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 2
	spc_note	E__, 5, 4
	spc_rest	14
	spc_note	B__, 4, 2
	spc_rest	2
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 2
	spc_note	D#_, 5, 4
	spc_rest	14
	spc_note	A__, 4, 4
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 2
	spc_note	B__, 4, 6
	spc_note	A__, 4, 4
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 2
	spc_note	B__, 4, 6
	spc_note	D#_, 5, 8
	spc_note	C#_, 5, 8
	spc_note	D#_, 5, 2
	spc_note	E__, 5, 2
	spc_rest	2
	spc_note	C#_, 5, 2
	spc_rest	2
	spc_note	B__, 4, 6
	spc_note	B__, 4, 2
	spc_rest	2
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 2
	spc_note	E__, 5, 4
	spc_rest	14
	spc_note	B__, 4, 2
	spc_rest	2
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 2
	spc_note	D#_, 5, 4
	spc_rest	14
	spc_note	A__, 4, 4
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 2
	spc_note	B__, 4, 6
	spc_note	A__, 4, 4
	spc_note	B__, 4, 4
	spc_note	C#_, 5, 2
	spc_note	B__, 4, 6
	spc_note	D#_, 5, 8
	spc_note	C#_, 5, 8
	spc_note	D#_, 5, 2
	spc_note	E__, 5, 2
	spc_rest	2
	spc_note	C#_, 5, 2
	spc_rest	2
	spc_note	D#_, 5, 6
	spc_rest	4
	spc_note	A__, 4, 8
	spc_note	A__, 4, 8
	spc_note	A__, 4, 8
	spc_note	A__, 4, 4
	spc_note	B__, 4, 20
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 4
	spc_note	A__, 4, 4
	spc_rest	4
	spc_note	G#_, 4, 8
	spc_note	G#_, 4, 8
	spc_note	G#_, 4, 8
	spc_note	G#_, 4, 4
	spc_note	A__, 4, 20
	spc_note	B__, 4, 4
	spc_note	A__, 4, 4
	spc_note	G#_, 4, 4
	spc_note	F#_, 4, 12
	spc_note	A#_, 4, 2
	spc_note	B__, 4, 10
	spc_note	F#_, 4, 8
	spc_note	G#_, 4, 12
	spc_note	C__, 5, 2
	spc_note	C#_, 5, 10
	spc_note	G#_, 4, 8
	spc_rest	4
	spc_note	F__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G#_, 4, 4
	spc_rest	4
	spc_note	E__, 5, 4
	spc_note	D#_, 5, 4
	spc_note	C#_, 5, 4
	spc_note	B__, 4, 16
	spc_note	B__, 4, 16
	spc_end


SGB_placeholder_2:
	spc_inst	29
	spc_transpose	12
	spc_note_vel	G#_, 3, 4,	7,11
	spc_rest	8
	spc_note	G#_, 3, 4
	spc_rest	8
	spc_note	G#_, 3, 8
	spc_note	F#_, 3, 4
	spc_rest	8
	spc_note	F#_, 3, 4
	spc_rest	8
	spc_note	F#_, 3, 4
	spc_rest	4
	spc_note	E__, 3, 4
	spc_note	F#_, 3, 4
	spc_note	G#_, 3, 8
	spc_note	E__, 3, 4
	spc_note	F#_, 3, 4
	spc_note	A__, 3, 8
	spc_note	B__, 3, 16
	spc_note	F#_, 3, 16
	spc_note	G#_, 3, 4
	spc_rest	8
	spc_note	G#_, 3, 4
	spc_rest	8
	spc_note	G#_, 3, 8
	spc_note	F#_, 3, 4
	spc_rest	8
	spc_note	F#_, 3, 4
	spc_rest	16
	spc_note	E__, 3, 4
	spc_note	F#_, 3, 4
	spc_note	G#_, 3, 8
	spc_note	E__, 3, 4
	spc_note	F#_, 3, 4
	spc_note	A__, 3, 8
	spc_note	B__, 3, 16
	spc_note	B__, 3, 16
	spc_note	C#_, 3, 32
	spc_note	F#_, 3, 32
	spc_note	F__, 3, 32
	spc_note_vel	C#_, 3, 24,	7,10
	spc_note_vel	F#_, 3, 8,	7,8
	spc_note_vel	D__, 3, 16,	7,11
	spc_note	D#_, 3, 16
	spc_note	E__, 3, 16
	spc_note	F__, 3, 16
	spc_note	F#_, 3, 32
	spc_note	A__, 3, 16
	spc_note	F#_, 3, 16
	spc_end


SGB_placeholder_3:
	spc_inst	13
	spc_volume	255
	spc_note_vel	E__, 3, 4,	7,11
	spc_rest	8
	spc_note	E__, 3, 4
	spc_rest	4
	spc_note	E__, 3, 4
	spc_note	E__, 3, 8
	spc_note	D#_, 3, 4
	spc_rest	8
	spc_note	D#_, 3, 4
	spc_rest	4
	spc_note	D#_, 3, 4
	spc_note	D#_, 3, 8
	spc_note	C#_, 3, 4
	spc_rest	8
	spc_note	C#_, 3, 4
	spc_rest	4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 8
	spc_note	D#_, 3, 4
	spc_rest	4
	spc_note	C#_, 3, 4
	spc_note	B__, 2, 12
	spc_note	C#_, 3, 4
	spc_note	D__, 3, 4
	spc_note	E__, 3, 4
	spc_rest	8
	spc_note	E__, 3, 4
	spc_rest	4
	spc_note	E__, 3, 4
	spc_note	E__, 3, 8
	spc_note	D#_, 3, 4
	spc_rest	8
	spc_note	D#_, 3, 4
	spc_rest	4
	spc_note	D#_, 3, 4
	spc_note	D#_, 3, 8
	spc_note	C#_, 3, 4
	spc_rest	8
	spc_note	C#_, 3, 4
	spc_rest	4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 8
	spc_note	D#_, 3, 4
	spc_rest	4
	spc_note	C#_, 3, 4
	spc_note	B__, 2, 12
	spc_note	D__, 3, 4
	spc_note	B__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	A__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	B__, 2, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 4
	spc_note	C#_, 3, 8
	spc_note	C#_, 3, 8
	spc_note	B__, 2, 8
	spc_note	A__, 2, 8
	spc_note	B__, 2, 8
	spc_rest	8
	spc_note	B__, 2, 8
	spc_rest	8
	spc_end

SGB_placeholder_9:
	spc_loop	.pattern - SGB_placeholder, 16
.pattern
	spc_dnote_vel	kick_, kick_note_, 8,	7,11
	spc_dnote	snare_, snare_note_, 12
	spc_dnote	kick_, kick_note_, 4
	spc_dnote	snare_, snare_note_, 8
	spc_end
SGB_placeholder_end::
