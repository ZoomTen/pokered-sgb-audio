;include "sbn_macros.asm"

SGB_pokemon::
SGB_pokemon_begin:
	spc_BASEADDR $2b02

; begin sequence
	spc_channel SGB_pokemon_pattern0 - SGB_pokemon_begin
.loop_point
	spc_channel SGB_pokemon_pattern1 - SGB_pokemon_begin
	spc_seq_loop .loop_point - SGB_pokemon_begin

; begin phrases
SGB_pokemon_pattern0:
	spc_channel SGB_pokemon_0a - SGB_pokemon_begin
	spc_channel SGB_pokemon_1a - SGB_pokemon_begin
	spc_channel SGB_pokemon_2a - SGB_pokemon_begin
	spc_channel SGB_pokemon_3a - SGB_pokemon_begin
	spc_channel SGB_pokemon_9a - SGB_pokemon_begin
	dw 0
	dw 0
	dw 0
	dw 0

SGB_pokemon_pattern1:
	spc_channel SGB_pokemon_0b - SGB_pokemon_begin
	spc_channel SGB_pokemon_1b - SGB_pokemon_begin
	spc_channel SGB_pokemon_2b - SGB_pokemon_begin
	spc_channel SGB_pokemon_3b - SGB_pokemon_begin
	spc_channel SGB_pokemon_9b - SGB_pokemon_begin
	dw 0
	dw 0
	dw 0
	dw 0

SGB_pokemon_0a:
	spc_tempo	19
	spc_m_volume	248
; global echo
	spc_set_echo	3, 7, 3
	spc_echo	%000010111, $c0, $c0
; channel vibrato
	spc_vibrato	6, 24, 24
	spc_inst	45
	spc_note_vel	G__, 3, 4,	7,11
	spc_note	B__, 3, 4
	spc_note	D__, 4, 4
	spc_note	F#_, 4, 4
	spc_note	G__, 4, 8
	spc_rest	8
	spc_note	G__, 4, 8
	spc_rest	16
	spc_note	G__, 4, 4
	spc_note	G__, 4, 4
	spc_note	G__, 4, 8
	spc_rest	8
	spc_note	G__, 4, 8
	spc_rest	8
	spc_note	G__, 4, 8
	spc_rest	8
	spc_note	F__, 4, 6
	spc_note	F__, 4, 6
	spc_note	F__, 4, 4
	spc_note	F__, 4, 6
	spc_note	F__, 4, 6
	spc_note	F__, 4, 4
	spc_end

SGB_pokemon_0b:
	spc_inst	45
	spc_note_vel	G__, 4, 24,	7,11
	spc_note	B__, 4, 8
	spc_note	D__, 5, 32
	spc_inst	29
	spc_note_vel	C__, 5, 16,	7,9
	spc_note	A__, 4, 8
	spc_inst	45
	spc_note_vel	A__, 4, 8,	7,11
	spc_note	F__, 5, 24
	spc_note	E__, 5, 4
	spc_note	D#_, 5, 4
	spc_note	D__, 5, 32
	spc_inst	29
	spc_note	A__, 3, 32
	spc_note	B__, 3, 32
	spc_rest	8
	spc_inst	45
	spc_note	G__, 3, 8
	spc_note	A__, 3, 8
	spc_note	B__, 3, 8
	spc_inst	45
	spc_note	G__, 4, 24
	spc_note	B__, 4, 8
	spc_note	D__, 5, 32
	spc_inst	29
	spc_note_vel	C__, 5, 16,	7,9
	spc_note	A__, 4, 16
	spc_inst	45
	spc_note_vel	C__, 5, 12,	7,11
	spc_note	B__, 4, 12
	spc_note	C__, 5, 8
	spc_note	D__, 5, 32
	spc_inst	29
	spc_note_vel	F__, 5, 12,	7,10
	spc_note_vel	E__, 5, 12,	7,10
	spc_note_vel	C__, 5, 8,	7,10
	spc_note_vel	D__, 5, 40,	7,9
	spc_inst	45
	spc_note_vel	B__, 3, 8,	7,11
	spc_note	C__, 4, 8
	spc_note	D__, 4, 8
	spc_inst	45
	spc_note	G__, 4, 24
	spc_note	B__, 4, 8
	spc_note	D__, 5, 32
	spc_inst	29
	spc_note_vel	C__, 5, 16,	7,9
	spc_note	A__, 4, 8
	spc_inst	45
	spc_note_vel	A__, 4, 8,	7,11
	spc_note	F__, 5, 24
	spc_note	E__, 5, 4
	spc_note	D#_, 5, 4
	spc_note	D__, 5, 32
	spc_inst	29
	spc_note	A__, 3, 32
	spc_note	B__, 3, 32
	spc_rest	8
	spc_inst	45
	spc_note	G__, 3, 8
	spc_note	A__, 3, 8
	spc_note	B__, 3, 8
	spc_note	G__, 4, 24
	spc_note	B__, 4, 8
	spc_note	D__, 5, 32
	spc_note_vel	C__, 5, 16,	7,9
	spc_note	A__, 4, 8
	spc_rest	8
	spc_note_vel	F__, 5, 12,	7,11
	spc_note	E__, 5, 12
	spc_note	F__, 5, 8
	spc_note	G__, 5, 24
	spc_note	A#_, 5, 8
	spc_note	G__, 5, 32
	spc_rest	32
	spc_note	G__, 5, 16
	spc_note	A__, 5, 16
	spc_note	A#_, 5, 24
	spc_note	F__, 5, 4
	spc_rest	4
	spc_note	F__, 5, 32
	spc_rest	32
	spc_note	A#_, 5, 16
	spc_note	B__, 5, 16
	spc_note	C__, 6, 24
	spc_note	G__, 5, 4
	spc_rest	4
	spc_note	G__, 5, 32
	spc_rest	32
	spc_note	C__, 6, 16
	spc_note	C#_, 6, 16
	spc_note	D__, 6, 8
	spc_rest	88
	spc_note	C__, 6, 8
	spc_rest	4
	spc_note	C__, 6, 8
	spc_rest	4
	spc_note	C#_, 6, 8
	spc_note	D__, 6, 8
	spc_rest	88
	spc_note	C__, 6, 8
	spc_rest	4
	spc_note	C__, 6, 8
	spc_rest	4
	spc_note	B__, 5, 8
	spc_inst	45
	spc_end


SGB_pokemon_1a:
	spc_inst	45
	spc_vibrato	6, 12, 24
	spc_rest_vel	16,	7,11
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G__, 3, 8
	spc_rest	16
	spc_note	G__, 3, 4
	spc_note	G__, 3, 4
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	A__, 3, 6
	spc_note	A__, 3, 6
	spc_note	A__, 3, 4
	spc_note	A__, 3, 6
	spc_note	A__, 3, 6
	spc_note	F__, 3, 4
	spc_end

SGB_pokemon_1b:
	spc_loop	.p3 - SGB_pokemon_begin,	1
	spc_note	D__, 4, 24
	spc_note	B__, 3, 8
	spc_note	D__, 4, 32
	spc_note	C__, 4, 32
	spc_note	F__, 4, 12
	spc_note	F__, 4, 12
	spc_note	C__, 4, 8
	spc_note	B__, 3, 32
	spc_note	F__, 4, 24
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 32
	spc_rest	32
	spc_loop	.p3 - SGB_pokemon_begin,	1
	spc_note	D__, 4, 24
	spc_note	B__, 3, 8
	spc_note	D__, 4, 32
	spc_note	C__, 4, 24
	spc_rest	8
	spc_note	F__, 4, 12
	spc_note	F__, 4, 12
	spc_note	C__, 4, 8
	spc_note	D__, 4, 24
	spc_note	F__, 4, 8
	spc_note	G__, 4, 8
	spc_note	D__, 4, 8
	spc_note	D__, 4, 8
	spc_note	G__, 4, 8
	spc_note	G__, 4, 8
	spc_note	D__, 4, 8
	spc_note	D__, 4, 8
	spc_note	G__, 4, 8
	spc_note	A__, 4, 8
	spc_note	F__, 4, 8
	spc_note	G__, 4, 8
	spc_note	A__, 4, 8
	spc_note	D__, 4, 48
	spc_note	E__, 4, 16
	spc_note	F__, 4, 32
	spc_note	G__, 4, 16
	spc_note	F__, 4, 16
	spc_note	E__, 4, 48
	spc_note	F__, 4, 16
	spc_note	G__, 4, 32
	spc_note	C__, 5, 16
	spc_note	C#_, 5, 16
	spc_note	A__, 5, 8
	spc_rest	88
	spc_note	G__, 5, 8
	spc_rest	4
	spc_note	E__, 5, 8
	spc_rest	4
	spc_note	G__, 5, 8
	spc_note	A__, 5, 8
	spc_rest	88
	spc_note	A__, 5, 8
	spc_rest	4
	spc_note	A__, 5, 8
	spc_rest	4
	spc_note	E__, 5, 8
	spc_end
.p3
	spc_note_vel	D__, 4, 24,	7,11
	spc_note	B__, 3, 8
	spc_note	D__, 4, 32
	spc_note	C__, 4, 24
	spc_note	F__, 4, 24
	spc_note	C__, 4, 16
	spc_note	D__, 4, 32
	spc_note	F__, 4, 24
	spc_note	E__, 4, 4
	spc_note	D#_, 4, 4
	spc_note	D__, 4, 32
	spc_note	C__, 4, 12
	spc_note	B__, 3, 12
	spc_note	C__, 4, 8
	spc_end

SGB_pokemon_2a:
	spc_inst	29
	spc_rest_vel	127,	7,10
	spc_rest	127
	spc_rest	127
	spc_end

SGB_pokemon_2b:
; channel vibrato
	spc_vibrato	6, 24, 36
	spc_rest	127
	spc_rest	127
	spc_rest	127
	spc_rest	127
	spc_rest	127
	spc_rest	127
	spc_rest	127
	spc_rest	127
	spc_rest	8
	spc_note	F__, 4, 48
	spc_note	C__, 4, 16
	spc_note	D__, 4, 32
	spc_note	E__, 4, 16
	spc_note	D__, 4, 16
	spc_note	C__, 4, 48
	spc_note	D__, 4, 16
	spc_note	E__, 4, 32
	spc_note	G__, 4, 32
	spc_note	A__, 4, 8
	spc_note	D__, 5, 8
	spc_note	F#_, 5, 8
	spc_note	A__, 5, 24
	spc_note	G__, 5, 8
	spc_note	F#_, 5, 8
	spc_note	D__, 5, 8
	spc_rest	4
	spc_note	E__, 5, 4
	spc_note	F#_, 5, 48
	spc_note	A__, 4, 8
	spc_note	D__, 5, 8
	spc_note	F#_, 5, 8
	spc_note	A__, 5, 24
	spc_note	G__, 5, 8
	spc_note	F#_, 5, 8
	spc_note	D__, 5, 32
	spc_note	D__, 5, 8
	spc_rest	4
	spc_note	D__, 5, 8
	spc_rest	4
	spc_note	D__, 5, 8
	spc_end


SGB_pokemon_3a:
	spc_inst	13
	spc_note_vel	G__, 3, 8,	7,11
	spc_note	D__, 3, 8
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G__, 3, 8
	spc_rest	16
	spc_note	G__, 3, 8
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	G__, 3, 8
	spc_rest	8
	spc_note	F__, 3, 28
	spc_note	A__, 3, 4
	spc_end

SGB_pokemon_3b:
	spc_loop	.bass_p0 - SGB_pokemon_begin,	3
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 8
	spc_note	D__, 3, 8
	spc_note	F__, 3, 16
	spc_note	C__, 3, 8
	spc_note	F__, 3, 16
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	F#_, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 8
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	F__, 3, 8
	spc_note	A__, 3, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	F__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	F__, 3, 8
	spc_note	A#_, 3, 8
	spc_note	F__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	F__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	F__, 3, 8
	spc_note	B__, 3, 8
	spc_note	G__, 3, 8
	spc_note	C__, 4, 16
	spc_note	G__, 3, 8
	spc_note	C__, 4, 16
	spc_note	G__, 3, 8
	spc_note	C__, 4, 8
	spc_note	G__, 3, 8
	spc_note	C__, 4, 16
	spc_note	G__, 3, 8
	spc_note	C__, 4, 16
	spc_note	G__, 3, 8
	spc_note	C#_, 4, 8
	spc_note	G#_, 3, 8
	spc_note	D__, 4, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	C__, 4, 12
	spc_note	C__, 4, 12
	spc_note	C#_, 4, 8
	spc_note	D__, 4, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	D__, 3, 8
	spc_note	D__, 3, 4
	spc_note	D__, 3, 4
	spc_note	C__, 4, 12
	spc_note	C__, 4, 12
	spc_note	B__, 3, 8
	spc_end
.bass_p0
	spc_note_vel	G__, 3, 16,	7,11
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 8
	spc_note	D__, 3, 8
	spc_note	F__, 3, 16
	spc_note	C__, 3, 8
	spc_note	F__, 3, 16
	spc_note	C__, 3, 8
	spc_note	F__, 3, 8
	spc_note	F#_, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 8
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 16
	spc_note	D__, 3, 8
	spc_note	G__, 3, 8
	spc_note	D__, 3, 8
	spc_end

SGB_pokemon_9a:
	spc_dnote_vel	snare_, snare_note_, 8,	7,11
	spc_dnote_vel	snare_, snare_note_, 2,	7,6
	spc_dnote_vel	snare_, snare_note_, 2,	7,7
	spc_dnote_vel	snare_, snare_note_, 2,	7,8
	spc_dnote_vel	snare_, snare_note_, 2,	7,9
	spc_dnote_vel	snare_, snare_note_, 16,	7,11
	spc_dnote	snare_, snare_note_, 16
	spc_dnote_vel	snare_, snare_note_, 4,	7,9
	spc_dnote_vel	snare_, snare_note_, 4,	7,6
	spc_dnote_vel	snare_, snare_note_, 4,	7,11
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 6
	spc_dnote	kick_, kick_note_, 6
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 6
	spc_dnote	kick_, kick_note_, 6
	spc_dnote	snare_, snare_note_, 4
	spc_end

SGB_pokemon_9b:
	spc_loop	.pattern - SGB_pokemon_begin,	6
	spc_end
.pattern
	spc_dnote_vel	snare_, snare_note_, 16,	7,9
	spc_dnote	snare_, snare_note_, 24
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 24
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 24
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 24
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_end
SGB_pokemon_end::
