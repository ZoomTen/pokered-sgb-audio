_PlayMusicID::
	; d = Music to play
	ld a, d
	ld [wCurrentMusicID], a
	cp $FF
	jr z, .stop_sound
	add a				; up to 127 tracks for now out of the theoretical 255
	ld c, a
	xor a
	ld [wAudioFadeOutControl], a
	ld b, a
	ld hl, MusicEntries
	add hl, bc
	ld a, [hli]
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a

	ld a, [wOnSGB]
	and a
	jr nz, .play_sgb

	ld a, [hl]
	ld [wNewSoundID], a
	jp PlaySound
.stop_sound
	ld a, [wOnSGB]
	jp PlaySound
.play_sgb
; hide the mess the SGB is about to see
	ld b, BANK(Trn_FreezeSGBScreen)
	ld hl,Trn_FreezeSGBScreen
	call Bankswitch
; save LCD state
	ld a, [rBGP]
	ld [hLastBGP], a
	ld a, [rSCX]
	ld [hLastSCX], a
	ld a, [rSCY]
	ld [hLastSCY], a
	ld a, [rWY]
	ld [hLastWY], a
	ld a, [rLCDC]
	ld [hLastLCDState], a
	call DisableLCD
; save tileset
	ld a, SRAM_ENABLE
	ld [MBC1SRamEnable], a
	ld a, BANK(sTilesetBackup)
	ld [MBC1SRamBank], a
	ld bc, $1000
	ld hl, vChars0
	ld de, sTilesetBackup
	call CopyData
	xor a
	ld bc, $1000
	ld hl, vChars0
	call FillMemory
; overwrite tileset with SGB music data
	ld a, [wCurrentMusicID]
	add a			; up to 127 tracks for now out of the theoretical 255
	ld c, a
	ld b, 0
	ld hl, SGB_MusicEntries
	add hl, bc
	ld a, [hli]	; bank in A
	ld c, [hl]	; ID in C
; place ID in hl and multiply by 4
	ld l, c
	ld h, 0
	add hl
	add hl
	ld bc, $4000
	add hl, bc
; hl = SGB music header location
;  a = bank of SGB music header
	call LoadSGBTrack
; save tilemap
	ld bc, 13 * 32
	ld hl, vBGMap0	; directly use VRAM 
	ld de, sTilemapBackup
	call CopyData
; copy 00-FF tile map
	xor a
	ld hl, vBGMap0	; directly use VRAM to reduce time
	ld b, $c
.outer
	ld c, $14
.inner
	ld [hli], a
	inc a
	dec c
	jr nz, .inner
rept 12
	inc hl	; move to next line
endr
	push af
	ld a, b
	or c
	jr z, .out
	dec b
	pop af
	jr .outer
.out
	pop af
; own screen mode
	ld a, $FF
	ld [rWY], a
	ld [hWY], a	; scroll the window out
	ld a, $E4
	ld [rBGP], a
	xor a
	ld [hSCX], a
	ld [rSCX], a	; clear X
	ld [rSCY], a
	ld [hSCY], a	; clear Y scroll
	ld a, %10010001
	ld [rLCDC], a
; do transfer
	ld b, BANK(Trn_PlaySGBMusic)
	ld hl,Trn_PlaySGBMusic
	call Bankswitch
	ld c, 3			;
	call DelayFrames	; Is this enough time for the SGB to process?
	call DisableLCD
; reload tileset
	ld bc, $1000
	ld hl, sTilesetBackup
	ld de, vChars0
	call CopyData
; reload tilemap
	ld bc, 13 * 32
	ld hl, sTilemapBackup
	ld de, vBGMap0	; directly use VRAM to reduce time
	call CopyData
; disable sram
	xor a
	ld [MBC1SRamEnable], a
; reload previous LCD state
	ld a, [hLastSCX]
	ld [hSCX], a
	ld [rSCX], a
	ld a, [hLastSCY]
	ld [hSCY], a
	ld [rSCY], a
	ld a, [hLastBGP]
	ld [rBGP], a
	ld a, [hLastWY]
	ld [hWY], a
	ld [rWY], a
	ld a, [hLastLCDState]
	ld [rLCDC], a
; unfreeze the screen
	call DelayFrame
	ld b, BANK(Trn_UnfreezeSGBScreen)
	ld hl,Trn_UnfreezeSGBScreen
	call Bankswitch
	ret

INCLUDE "audio/headers/music_entries.asm"
INCLUDE "audio/sgb/sgb_music_entries.asm"
