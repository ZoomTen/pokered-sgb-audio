sgb_music_pointer: macro
	const MusSGB_\1
	dw SGB_\1_end - SGB_\1	; how long is the data
	dw SGB_\1		; pointer
endm

SECTION "SGB Music 1", ROMX
SGB_Headers_1::
	const_def
	sgb_music_pointer pokemon	; title screen
	sgb_music_pointer intro	; opening battle
	sgb_music_pointer wild	; wild battle
	sgb_music_pointer placeholder	; unused song remix
INCLUDE "audio/sgb/music/title_screen.asm"
INCLUDE "audio/sgb/music/intro.asm"
INCLUDE "audio/sgb/music/wild.asm"
INCLUDE "audio/sgb/music/placeholder.asm"
