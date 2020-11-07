_PlayMusicID::
	; d = Music to play
	ld a, [wNewSoundID]
	ld [wLastMusicSoundID],a

	ld a, [wCheckAndFadeMusicID]
	bit 0, a	; check for dupe flag
	jr z, .skip_dupe_id_check
	ld a, [wCurrentMusicID]
	cp d
	jr nz, .skip_dupe_id_check
	xor a
	ld [wCheckAndFadeMusicID], a
	ret	; stop here if the track is a dupe of the prev. one
.skip_dupe_id_check
	ld a, d
	ld [wCurrentMusicID], a
	cp $FF
	jr z, .stop_sound
	add a				; up to 127 tracks for now out of the theoretical 255
	ld c, a
	xor a
	ld b, a
	ld hl, MusicEntries
	add hl, bc

	ld a, [wCheckAndFadeMusicID]
	and a, %00000010
	jr z, .load_audio_bank_immediately
	rlca
	ld [wAudioFadeOutControl], a
	ld a, [hli]
	ld [wAudioSavedROMBank], a
	ld [wMusicIDBank], a
	jr .check_sgb
.load_audio_bank_immediately
	ld a, [hli]
	ld [wAudioROMBank], a
	ld [wMusicIDBank], a
.check_sgb
	ld a, [wOnSGB]
	and a
	jr nz, .play_sgb

	xor a
	ld [wCheckAndFadeMusicID], a

	ld a, [hl]
	ld [wNewSoundID], a
	call PlaySound

; GB sound check for alts
; THIS ONLY WORKS WHEN wCheckAndFadeMusicID = 0
	ld a, d
	cp Mus_MeetRival2
	jr z, .meet_rival_alt
	cp Mus_Ending
	jr z, .cities1_alt
	ret

.meet_rival_alt
	ld hl, wChannelCommandPointers
	ld de, Music_MeetRival_branch_b1a2
	call .overwrite_pointer
	ld de, Music_MeetRival_branch_b21d
	call .overwrite_pointer
	ld de, Music_MeetRival_branch_b2b5
.overwrite_pointer
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	ret

.cities1_alt
	ld hl, wChannelCommandPointers
	ld de, Music_Cities1_branch_aa6f
	jp .overwrite_pointer

.stop_sound
	ld a, [wOnSGB]
	and a
	jr nz, .stop_sgb
	xor a
	ld [wCheckAndFadeMusicID], a
	ld a, $FF
	jp PlaySound
.play_sgb
; shutdown music
	ld a, $FF
	ld [wNewSoundID], a
	ld [wSoundID], a
	inc a
	ld [wAudioFadeOutControl], a
; copy packet template
	ld bc, 16
	ld a, BANK(MSU1SoundTemplate)
	ld hl, MSU1SoundTemplate
	ld de, wMSU1PacketSend
	call FarCopyData
; modify packet template
	ld a, [wMusicIDBank]
	ld [wAudioROMBank], a		; set audio bank immediately regardless
	ld a, [wCheckAndFadeMusicID]
	and a, %00000010		; grab just the fade bit
	or a, 1				; enable restart
	ld [wMSU1PacketSend+5], a	; ask for a restart
	ld a, [wCurrentMusicID]
	inc a				; track 0 = track 1
	ld [wMSU1PacketSend+6], a	; set new track ID
	dec a
	ld c, a
	ld b, 0
	ld hl, MSU1_PlayModes
	add hl, bc
	ld a, [hl]
	ld [wMSU1PacketSend+9], a	; set looping mode
; send it over!
	ld de,wMSU1PacketSend
	ld b, BANK(TransferPacket)
	ld hl,TransferPacket
	jp Bankswitch
.stop_sgb
	ld de,StopMusicPacket
	ld b, BANK(TransferPacket)
	ld hl,TransferPacket
	jp Bankswitch

INCLUDE "data/audio/music_entries.asm"
INCLUDE "data/audio/msu1_playmodes.asm"
