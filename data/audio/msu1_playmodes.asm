; see also constants/music_id_constants.asm

MSU1_NO_LOOP      equ %00000001
MSU1_PLAY_LOOPING equ %00000011

MSU1_PlayModes:
	db MSU1_NO_LOOP ;	Music_IntroBattle
	db MSU1_PLAY_LOOPING ;	Music_TitleScreen

	db MSU1_PLAY_LOOPING ;	Music_PalletTown
	db MSU1_PLAY_LOOPING ;	Music_Cities1
	db MSU1_PLAY_LOOPING ;	Music_Cities2
	db MSU1_PLAY_LOOPING ;	Music_Celadon
	db MSU1_PLAY_LOOPING ;	Music_Cinnabar
	db MSU1_PLAY_LOOPING ;	Music_Vermilion
	db MSU1_PLAY_LOOPING ;	Music_Lavender
	db MSU1_PLAY_LOOPING ;	Music_SSAnne

	db MSU1_PLAY_LOOPING ;	Music_Routes1
	db MSU1_PLAY_LOOPING ;	Music_Routes2
	db MSU1_PLAY_LOOPING ;	Music_Routes3
	db MSU1_PLAY_LOOPING ;	Music_Routes4
	db MSU1_PLAY_LOOPING ;	Music_IndigoPlateau

	db MSU1_PLAY_LOOPING ;	Music_Pokecenter
	db MSU1_PLAY_LOOPING ;	Music_Gym
	db MSU1_PLAY_LOOPING ;	Music_OaksLab
	db MSU1_PLAY_LOOPING ;	Music_GameCorner
	db MSU1_PLAY_LOOPING ;	Music_Dungeon1
	db MSU1_PLAY_LOOPING ;	Music_Dungeon2
	db MSU1_PLAY_LOOPING ;	Music_Dungeon3
	db MSU1_PLAY_LOOPING ;	Music_CinnabarMansion
	db MSU1_PLAY_LOOPING ;	Music_PokemonTower
	db MSU1_PLAY_LOOPING ;	Music_SilphCo

	db MSU1_PLAY_LOOPING ;	Music_MeetProfOak
	db MSU1_PLAY_LOOPING ;	Music_MeetRival
	db MSU1_PLAY_LOOPING ;	Music_MeetRival2
	db MSU1_PLAY_LOOPING ;	Music_MeetEvilTrainer
	db MSU1_PLAY_LOOPING ;	Music_MeetFemaleTrainer
	db MSU1_PLAY_LOOPING ;	Music_MeetMaleTrainer

	db MSU1_PLAY_LOOPING ;	Music_MuseumGuy
	db MSU1_PLAY_LOOPING ;	Music_SafariZone
	db MSU1_PLAY_LOOPING ;	Music_BikeRiding
	db MSU1_PLAY_LOOPING ;	Music_Surfing
	db MSU1_NO_LOOP ;	Music_JigglypuffSong

	db MSU1_PLAY_LOOPING ;	Music_WildBattle
	db MSU1_PLAY_LOOPING ;	Music_TrainerBattle
	db MSU1_PLAY_LOOPING ;	Music_GymLeaderBattle
	db MSU1_PLAY_LOOPING ;	Music_FinalBattle

	db MSU1_PLAY_LOOPING ;	Music_DefeatedWildMon
	db MSU1_PLAY_LOOPING ;	Music_DefeatedTrainer
	db MSU1_PLAY_LOOPING ;	Music_DefeatedGymLeader

	db MSU1_PLAY_LOOPING ;	Music_Ending
	db MSU1_PLAY_LOOPING ;	Music_HallOfFame
	db MSU1_NO_LOOP ;	Music_Credits
