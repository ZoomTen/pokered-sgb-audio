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

define SGB_INT     $BB

base {BASE_ADDR}

// 16 bytes of RAM to be used for the interrupt
v_ask_restart:
	db 0
v_track_number:
	dw 0
v_volume:
	db $FF
v_play_mode:
	db 0
// other variables
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0

check_msu1:
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
	ldx.w #interrupt_msu1
	stx   {SGB_INT}
// enable interrupts:
//              NMI for the SNES
//              H/V for the GameBoy
//           Joypad is essential
	lda.b #%10110001
	sta   $4200
// no msu-1, simply return
+
	plp
	cli	// enable interrupts
	rts

interrupt_msu1:
	php
	rep #$10	// 16 bit xy
	sep #$20	//  8 bit a
	
	lda $4210	// acknowledge interrupt
	
	lda   v_ask_restart
	cmp.b #1
	bne   .no_restart

// play a song
	lda   v_volume
	sta   {MSU_VOLUME}
	ldx   v_track_number
	stx   {MSU_TRACK}

// currently hardcoded: loop flag.
// TODO: implement this gameboy-side
	lda.b #3
	sta   {MSU_CONTROL}

// reset restart flag
	lda.b #0
	sta   v_ask_restart

.no_restart:
	plp
	rti	// this is an interrupt routine, so we use this

// print base address at the end in little endian
// for the python script to read out
dw {BASE_ADDR}
