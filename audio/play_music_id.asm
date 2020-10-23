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
; copy packet template
	ld bc, 16
	ld a, BANK(MSU1SoundTemplate)
	ld hl, MSU1SoundTemplate
	ld de, wMSU1PacketSend
	call FarCopyData
; modify packet template
	ld a, 1
	ld [wMSU1PacketSend+5], a
	ld a, [wCurrentMusicID]
	inc a				; track 0 = track 1
	ld [wMSU1PacketSend+6], a
; send it over!
	ld de,wMSU1PacketSend
	ld b, BANK(TransferPacket)
	ld hl,TransferPacket
	jp Bankswitch

INCLUDE "data/audio/music_entries.asm"
