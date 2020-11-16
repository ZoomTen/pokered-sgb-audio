; Macros for the SGB N-SPC music

C__ equ 0
C#_ equ 1
D__ equ 2
D#_ equ 3
E__ equ 4
F__ equ 5
F#_ equ 6
G__ equ 7
G#_ equ 8
A__ equ 9
A#_ equ 10
B__ equ 11

kick_ equ 52
kick_note_ equ $ac

snare_ equ 53
snare_note_ equ $a8

spc_BASEADDR: macro
SPC_BASE = \1
endm

spc_end: macro
	db $00
endm

spc_len: macro
	db \1
endm

spc_vel: macro
	; \1: Quantization factor, usually 7 = 100%
	; \2: Velocity
	db ((\1)<< 4) | (\2)
endm

spc_note: macro
	; \1: note
	; \2: octave
	; \3: length
	db \3
	db $80 + ((\2-2) * 12) + \1
endm

spc_note_vel: macro
	; \1: note
	; \2: octave
	; \3: length
	; \4: quantization
	; \5: velocity
	db \3
	db ((\4) << 4) | (\5)
	db $80 + ((\2-2) * 12) + \1
endm

spc_dnote: macro
	; \1: patch
	; \2: note
	; \3: length
	db \3
	db $e0, \1
	db \2
endm

spc_dnote_vel: macro
	; \1: patch
	; \2: note
	; \3: length
	; \4: quantization
	; \5: velocity
	db \3
	db ((\4) << 4) | (\5)
	db $e0, \1
	db \2
endm

spc_tie: macro
	; \1: length
	db \1
	db $C8
endm

spc_tie_vel: macro
	; \1: length
	; \2: quantization
	; \3: velocity
	db \1
	db ((\2) << 4) | (\3)
	db $C8
endm

spc_rest: macro
	; \1: length
	db \1
	db $C9
endm

spc_rest_vel: macro
	; \1: length
	; \2: quantization
	; \3: velocity
	db \1
	db ((\2) << 4) | (\3)
	db $C9
endm

spc_inst: macro
	; \1: instrument index
	db $E0
	db \1
endm

spc_panning: macro
	db $E1
	db \1
endm

spc_panning_fade: macro
	db $E2
	db \1, \2
endm

spc_vibrato: macro
	db $E3
	db \1, \2, \3
endm

spc_vibrato_off: macro
	db $E4
endm

spc_vibrato_fade: macro
	db $F0
	db \1
endm

spc_m_volume: macro
	db $E5
	db \1
endm

spc_m_fade: macro
	db $E6
	db \1, \2
endm

spc_tempo: macro
	db $E7
	db \1
endm

spc_tempo_fade: macro
	db $E8
	db \1, \2
endm

spc_global_transpose: macro
	db $E9
	db \1
endm

spc_transpose: macro
	db $EA
	db \1
endm

spc_tremolo: macro
	db $EB
	db \1, \2, \3
endm

spc_tremolo_off: macro
	db $EC
endm

spc_volume: macro
	db $ED
	db \1
endm

spc_volume_fade: macro
	db $EE
	db \1, \2
endm

spc_loop: macro
	db $EF
	dw SPC_BASE + \1 ; THIS NEEDS TO BE RELATIVE
	db \2
endm

spc_channel: macro
	dw SPC_BASE + \1 ; THIS NEEDS TO BE RELATIVE
endm

spc_seq_loop: macro
	dw $FF
	spc_channel \1
endm

spc_slide_to: macro
	db $F1
	db \1, \2, \3
endm

spc_slide_from: macro
	db $F2
	db \1, \2, \3
endm

spc_slide_off: macro
	db $F3
endm

spc_finetune: macro
	db $F4
endm

spc_echo: macro
	db $F5
	db \1, \2, \3
endm

spc_echo_off: macro
	db $F6
endm

spc_set_echo: macro
	db $F7
	db \1, \2, \3
endm

spc_echo_fade: macro
	db $F8
	db \1, \2, \3
endm

spc_portamento: macro
	db $F9
	db \1, \2, \3
endm

spc_mute: macro
	db $FC
endm
