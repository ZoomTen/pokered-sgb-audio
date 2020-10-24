; see also constants/music_id_constants.asm

music_entry: MACRO
	db BANK(\1), ((\1 - SFX_Headers_1) / 3)
ENDM

MusicEntries:
	music_entry	Music_IntroBattle
	music_entry	Music_TitleScreen

	music_entry	Music_PalletTown
	music_entry	Music_Cities1
	music_entry	Music_Cities2
	music_entry	Music_Celadon
	music_entry	Music_Cinnabar
	music_entry	Music_Vermilion
	music_entry	Music_Lavender
	music_entry	Music_SSAnne

	music_entry	Music_Routes1
	music_entry	Music_Routes2
	music_entry	Music_Routes3
	music_entry	Music_Routes4
	music_entry	Music_IndigoPlateau

	music_entry	Music_Pokecenter
	music_entry	Music_Gym
	music_entry	Music_OaksLab
	music_entry	Music_GameCorner
	music_entry	Music_Dungeon1
	music_entry	Music_Dungeon2
	music_entry	Music_Dungeon3
	music_entry	Music_CinnabarMansion
	music_entry	Music_PokemonTower
	music_entry	Music_SilphCo

	music_entry	Music_MeetProfOak
	music_entry	Music_MeetRival
	music_entry	Music_MeetRival
	music_entry	Music_MeetEvilTrainer
	music_entry	Music_MeetFemaleTrainer
	music_entry	Music_MeetMaleTrainer

	music_entry	Music_MuseumGuy
	music_entry	Music_SafariZone
	music_entry	Music_BikeRiding
	music_entry	Music_Surfing
	music_entry	Music_JigglypuffSong

	music_entry	Music_WildBattle
	music_entry	Music_TrainerBattle
	music_entry	Music_GymLeaderBattle
	music_entry	Music_FinalBattle

	music_entry	Music_DefeatedWildMon
	music_entry	Music_DefeatedTrainer
	music_entry	Music_DefeatedGymLeader

	music_entry	Music_Cities1
	music_entry	Music_HallOfFame
	music_entry	Music_Credits
