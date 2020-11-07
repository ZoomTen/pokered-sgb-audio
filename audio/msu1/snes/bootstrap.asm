; MSU1 bootstrapping code. This sets up the MSU1 interrupts for track manip.
; upon SGB packet send, e.g. track loading, track fading, track "ducking"
; on fanfare play.

; 65816 code to be compiled with Asar
arch 65816

!BASE_ADDR   = $1800

!MSU_STATUS  = $2000
!MSU_READ    = $2001
!MSU_ID      = $2002
!MSU_SEEK    = $2000
!MSU_TRACK   = $2004
!MSU_VOLUME  = $2006
!MSU_CONTROL = $2007

!FADING_SPEED = 4	; how much to fade with each frame
!SGB_INT      = $BB

; xkas just needed a base addr :(
norom
org  0
base !BASE_ADDR

; i_ = GB -> SNES interfaces
; f_ = MSU1 controller flags
; v_ = MSU1 controller variables

;;;;;; 16 bytes of RAM to be used for the interrupt ;;;;;;;;;;;;

i_ask_restart:	; $1800
	db 0	; ask to reset the MSU1 registers with parameters ($1801-$1803)
		; bit 0 = ask for a restart
		; bit 1 = ask for a fade
		; bit 5 = stop currently playing audio
		; bit 6 = ask for update volume
		; bit 7 = a new song has been loaded

i_track_number:	; $1801
	dw 0	; the new track number

i_volume:	; $1803
	db $FF	; the initial volume

i_play_mode:	; $1804
	db 0	; the play mode of the new track

f_fading:	; $1805
	db 0	; fading out flag, follows i_ask_restart

v_fade_volume:	; $1806
	db 0	; current fade volume

i_force_volume: ; $1807
	db 0	; update the MSU-1 to play at this volume
		; when bit 6 of $1800 is set. 0 = return to i_volume
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0

;;;;;;;;;; msu1 setup code ;;;;;;;;;;;;;;;;;;;;;;

Check_MSU1:
	php
	rep #$10	; 16 bit xy
	sep #$20	;  8 bit a

; check for msu-1
	ldx   !MSU_ID		;
	cpx.w #$2D53		; 'S-'
	bne   +
	ldx   !MSU_TRACK	; MSU_ID + 2
	cpx.w #$534D		; 'MS'
	bne   +
	ldx   !MSU_VOLUME	; MSU_ID + 4
	cpx.w #$3155		; 'U1'
	bne   +

; reset msu-1 registers
	ldx.w #$0000
	stx   !MSU_STATUS
	stx   !MSU_ID
	stx   !MSU_TRACK
	stx   !MSU_VOLUME

; set SGB interrupt vector
	ldx.w #Interrupt_MSU1
	stx   !SGB_INT

; enable interrupts:
;                NMI for the SNES
;                H/V for the GameBoy
;             Joypad is essential
	lda.b #%10110001
	sta   $4200
	plp
	cli	; enable interrupts
	rts	; end here

; no msu-1, simply return
+
	plp
	rts

;;;;;;;;;; msu1 interrupt code ;;;;;;;;;;;;;;;;;;;;

Interrupt_MSU1:
	php
	rep #$10	; 16 bit xy
	sep #$20	;  8 bit a
	lda $4210	; acknowledge interrupt

	lda   f_fading
	bit.b #%00000010
	bne   .do_fade          ; if we are fading out, jump to fade routine

	lda   i_ask_restart
	bit.b #%11100011
	bne   .process_audio
	jmp   .skip		; if we're not asking for anything, skip processing

.process_audio:
	bit.b #%00100000
	bne   .stop_music	; instantly halt music

	bit.b #%01000000
	bne   .set_new_volume	; set volume to i_force_volume if bit 6 is set

	bit.b #%10000000
	bne   .load_new_song	; load a new song if bit 7 is set

	bit.b #%00000010
	beq   .restart_song	; if we're not fading out, restart the song right away

; otherwise, set fading flags
	sta   f_fading		; fading flag
	lda   i_volume
	sta   v_fade_volume
	sta   !MSU_VOLUME	; initial volume
	bra .skip		; end here

.stop_music:
	bit   !MSU_STATUS
	bvs   .skip		; v flag = bit 6
				; we hold off until the MSU is not busy
	stz   !MSU_CONTROL
	bra   .reset_flags

.set_new_volume:
	lda   i_force_volume
	cmp.b #0
	beq   .reset_volume	; don't force volume when forced volume = 0

	sta   !MSU_VOLUME
	bra   .skip

.reset_volume:
	lda   i_volume
	sta   !MSU_VOLUME	; reset msu1 volume
	bra   .skip

.restart_song:
; play a song
	stz   f_fading		; always clear fade flag
	stz   !MSU_VOLUME	; reset MSU volume before loading

	ldx   i_track_number
	stx   !MSU_TRACK	; load new track

	lda.b #%10000000
	sta   i_ask_restart	; set 'new song loaded' flag
	bra   .skip

.load_new_song:
	bit   !MSU_STATUS
	bvs   .skip		; v flag = bit 6
				; we hold off until the MSU is not busy

	lda   i_play_mode
	sta   !MSU_CONTROL	; set looping mode

	lda   i_volume
	sta   !MSU_VOLUME	; set track volume

	bra   .reset_flags

.do_fade:
	lda   v_fade_volume
	sbc.b #!FADING_SPEED
	bcc   .after_fade	; if done, load the next song immediately
	sta   v_fade_volume
	sta   !MSU_VOLUME
	bra   .skip

.after_fade:
	lda.b #0
	sta   v_fade_volume	; zero out fade volume
	lda   f_fading
	bit.b #%00000001
	bne   .restart_song	; if we also asked for a restart, do that
	stz   i_volume		; otherwise, zero out track volume (see .reset_volume)
	stz   !MSU_VOLUME

; and clear flags and fall through

.reset_flags:
	stz   i_ask_restart
	stz   f_fading
.skip:
	plp
	rti	; return from interrupt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; print base address at the end in little endian
; for the python script to read out
dw !BASE_ADDR
