PlayBattleMusic::
	xor a
	ld [wCheckAndFadeMusicID], a
	ld [wAudioFadeOutControl], a
	ld [wLowHealthAlarm], a
	;dec a ; SFX_STOP_ALL_MUSIC
	;ld [wNewSoundID], a
	;call PlayMusicID
	call DelayFrame
	;ld c, BANK(Music_GymLeaderBattle)
	ld a, [wGymLeaderNo]
	and a
	jr z, .notGymLeaderBattle
	ld a, Mus_GymLeaderBattle
	jr .playSong
.notGymLeaderBattle
	ld a, [wCurOpponent]
	cp OPP_ID_OFFSET
	jr c, .wildBattle
	cp OPP_RIVAL3
	jr z, .finalBattle
	cp OPP_LANCE
	jr nz, .normalTrainerBattle
	ld a, Mus_GymLeaderBattle ; lance also plays gym leader theme
	jr .playSong
.normalTrainerBattle
	ld a, Mus_TrainerBattle
	jr .playSong
.finalBattle
	ld a, Mus_ChampionBattle
	jr .playSong
.wildBattle
	ld a, Mus_WildBattle
.playSong
	jp PlayMusicID
