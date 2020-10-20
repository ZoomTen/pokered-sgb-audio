SGB_intro::
	spc_BASEADDR $2b02
SGB_intro_song:
	spc_channel SGB_intro_pattern - SGB_intro
	dw 0	;end song

SGB_intro_pattern:
	spc_channel SGB_intro_0 - SGB_intro
	spc_channel SGB_intro_1 - SGB_intro
	spc_channel SGB_intro_2 - SGB_intro
	spc_channel SGB_intro_3 - SGB_intro
	spc_channel SGB_intro_4 - SGB_intro
	spc_channel SGB_intro_9 - SGB_intro
	dw 0
	dw 0

SGB_intro_0:
	spc_tempo	26
	spc_m_volume	248
	spc_set_echo	3, 7, 3
	spc_echo	7, $c0, $c0
	spc_inst	45
	spc_rest_vel	32,	7,11
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	A__, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	A#_, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	A__, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	F#_, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	A__, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	C#_, 5, 16
	spc_note	D__, 5, 32
	spc_note	D__, 4, 32
	spc_note	C__, 5, 32
	spc_note	C__, 4, 32
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	A__, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	A#_, 4, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	C__, 5, 16
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	D__, 4, 4
	spc_rest	4
	spc_note	C#_, 5, 16
	spc_note	D__, 5, 64
	spc_note	D__, 6, 8
	spc_inst	45
	spc_end


SGB_intro_1:
	spc_inst	45
	spc_rest_vel	32,	7,11
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	D__, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	D#_, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	D__, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A#_, 3, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	D__, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	G__, 4, 16
	spc_note	A__, 4, 32
	spc_note	A__, 3, 32
	spc_note	F__, 4, 32
	spc_note	F__, 3, 32
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	D__, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	D#_, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	F__, 4, 16
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	A__, 3, 4
	spc_rest	4
	spc_note	G__, 4, 16
	spc_note	A__, 4, 64
	spc_note	D__, 4, 8
	spc_inst	45
	spc_end


SGB_intro_2:
	spc_inst	13
	spc_rest_vel	32,	7,10
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	F#_, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	A__, 3, 32
	spc_note	D__, 3, 32
	spc_note	A#_, 3, 32
	spc_note	D__, 3, 32
	spc_note_vel	D__, 3, 8,	7,11
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A__, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	D__, 3, 8
	spc_note	D__, 3, 8
	spc_note	A#_, 3, 16
	spc_note	A__, 3, 64
	spc_note	D__, 3, 8
	spc_inst	13
	spc_end


SGB_intro_3:
	spc_inst	29
	spc_rest_vel	127,	7,7
	spc_rest	97
	spc_note	D__, 4, 32
	spc_note_vel	G__, 4, 32,	7,7
	spc_note	A#_, 4, 32
	spc_note	A__, 4, 32
	spc_note	D__, 4, 64
	spc_note	C__, 5, 64
	spc_note	D__, 5, 64
	spc_note	D__, 5, 16
	spc_inst	29
	spc_end


SGB_intro_4:
	spc_inst	29
	spc_rest_vel	127,	7,5
	spc_rest	97
	spc_note	A#_, 3, 32
	spc_note	A__, 3, 32
	spc_note	F__, 4, 32
	spc_note	E__, 4, 32
	spc_note_vel	A__, 4, 64,	7,5
	spc_note	G__, 4, 64
	spc_note	A__, 4, 64
	spc_note_vel	A__, 4, 16,	7,7
	spc_inst	29
	spc_end


SGB_intro_9:
	spc_dnote_vel	snare_, snare_note_, 4,	7,11
	spc_dnote_vel	snare_, snare_note_, 4,	7,7
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote_vel	snare_, snare_note_, 4,	7,7
	spc_dnote_vel	snare_, snare_note_, 4,	7,8
	spc_dnote_vel	snare_, snare_note_, 4,	7,10
	spc_dnote_vel	snare_, snare_note_, 4,	7,11
	spc_dnote_vel	snare_, snare_note_, 8,	7,11
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote_vel	snare_, snare_note_, 4,	7,10
	spc_dnote_vel	snare_, snare_note_, 4,	7,8
	spc_dnote_vel	snare_, snare_note_, 4,	7,11
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 32
	spc_dnote	snare_, snare_note_, 32
	spc_dnote	snare_, snare_note_, 32
	spc_dnote_vel	snare_, snare_note_, 4,	7,8
	spc_dnote_vel	snare_, snare_note_, 4,	7,8
	spc_dnote_vel	snare_, snare_note_, 4,	7,8
	spc_dnote_vel	snare_, snare_note_, 4,	7,9
	spc_dnote_vel	snare_, snare_note_, 4,	7,9
	spc_dnote_vel	snare_, snare_note_, 4,	7,9
	spc_dnote_vel	snare_, snare_note_, 4,	7,10
	spc_dnote_vel	snare_, snare_note_, 4,	7,10
	spc_dnote_vel	snare_, snare_note_, 8,	7,11
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 4
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 16
	spc_dnote	snare_, snare_note_, 8
	spc_dnote	snare_, snare_note_, 32
	spc_dnote	snare_, snare_note_, 32
	spc_dnote	snare_, snare_note_, 8
	spc_end

SGB_intro_end::
