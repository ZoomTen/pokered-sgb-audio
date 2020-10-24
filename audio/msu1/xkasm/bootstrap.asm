// 65816 code to be compiled with XKAS
arch snes.cpu

define BASE_ADDR   $1800

define MSU_STATUS  $2000
define MSU_READ    $2001
define MSU_ID      $2002
define MSU_SEEK    $2000
define MSU_TRACK   $2004
define MSU_VOLUME  $2006
define MSU_CONTROL $2007

define FADING_SPEED 4	// how much to fade with each frame
define SGB_INT     $BB

base {BASE_ADDR}

// i_ = GB -> SNES interfaces
// f_ = MSU1 controller flags
// v_ = MSU1 controller variables

/////////// 16 bytes of RAM to be used for the interrupt ///////////////////////

i_ask_restart:	// ask to reset the MSU1 registers with parameters on packet send
	db 0
i_track_number:	// the new track number
	dw 0
i_volume:	// the initial volume
	db $FF
i_play_mode:	// the play mode of the new track
	db 0

f_fading:	// fading out flag
	db 0
v_fade_volume:	// volume of fading
	db 0
v_force_volume: // force the MSU-1 to play at this volume
	db 0

	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	
//////////////////// msu1 processing code //////////////////////////////////////

Check_MSU1:
	php
	rep #$10	// 16 bit xy
	sep #$20	//  8 bit a

// check for msu-1
	ldx   {MSU_ID}	//
	cpx.w #$2D53	// 'S-'
	bne   +
	ldx   {MSU_TRACK}	// MSU_ID + 2
	cpx.w #$534D	// 'MS'
	bne   +
	ldx   {MSU_VOLUME}// MSU_ID + 4
	cpx.w #$3155	// 'U1'
	bne   +

// reset msu-1 registers
	ldx.w #$0000
	stx   {MSU_STATUS}
	stx   {MSU_ID}
	stx   {MSU_TRACK}
	stx   {MSU_VOLUME}

// set SGB interrupt vector
	ldx.w #Interrupt_MSU1
	stx   {SGB_INT}

// enable interrupts:
//                NMI for the SNES
//                H/V for the GameBoy
//             Joypad is essential
	lda.b #%10110001
	sta   $4200
	plp
	cli	// enable interrupts
	rts	// end here

// no msu-1, simply return
+
	plp
	rts

//////////////////// msu1 interrupt code ///////////////////////////////////////

Interrupt_MSU1:
	php
	rep #$10	// 16 bit xy
	sep #$20	//  8 bit a
	lda $4210	// acknowledge interrupt
	
	lda   {MSU_STATUS}
	bit.b #%10000000
	bne   .skip		// skip processing if audio is busy at the moment
				// we can process stuff next interrupt

	lda   f_fading
	bit.b #%00000010
	bne   .do_fade          // if we are fading out, jump to fade routine

	lda   i_ask_restart
	bit.b #%00000011
	beq   .skip		// if we're not asking for a restart or fade, skip

	bit.b #%00000010
	beq   .restart_song	// if we're not fading out, restart the song right away

// otherwise, set fading flags
	sta   f_fading		// fading flag
	lda   i_volume
	sta   v_fade_volume
	sta   {MSU_VOLUME}	// initial volume
	bra .skip		// end here

.restart_song:
// play a song
	lda   i_volume
	sta   {MSU_VOLUME}
	ldx   i_track_number
	stx   {MSU_TRACK}
	lda   i_play_mode
	sta   {MSU_CONTROL}
	bra   .reset_flags

.do_fade:
	lda   v_fade_volume
	sbc.b #{FADING_SPEED}
	bcc   .after_fade	// if done, load the next song immediately
	sta   v_fade_volume
	sta   {MSU_VOLUME}
	bra   .skip
.after_fade:
	lda.b #0
	sta   v_fade_volume	// zero out fade volume
	sta   {MSU_VOLUME}
	lda   f_fading
	bit.b #%00000001
	bne   .restart_song	// if we also asked for a restart, do that
// otherwise, clear flags and fall through

.reset_flags:
	lda.b #0
	sta   i_ask_restart
	sta   f_fading
.skip:
	plp
	rti	// return from interrupt

////////////////////////////////////////////////////////////////////////////////

// print base address at the end in little endian
// for the python script to read out
dw {BASE_ADDR}
