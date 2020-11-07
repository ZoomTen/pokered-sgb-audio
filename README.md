# Pokémon Red and Blue - MSU1 Audio Hack

This is an MSU1 audio hack for Pokémon Red and Blue (English version).

When played on an SGB with MSU1 support set up (typically through FXPak SD2SNES or the BSNES emulator), the game will have CD-quality music.

This project is based on the [pokered](https://github.com/pret/pokered) disassembly.

Be noted various elements of the game hasn't been tested yet, so if you find something, post it in the issues here or on the [Zeldix thread](https://www.zeldix.net/t2176-super-game-boy-pokemon-generation-1-msu1)


## Notes
The MSU-1 streamed music will ONLY work under BSNES (or SD2SNES FXPak, although this has not been tested by me and thus instructions are omitted here. Instructions for the LADX MSU-1 patch may be adapted for here however).

If played in BGB under SGB mode, NO music will play.

HOWEVER if you are playing it on GB / GBC mode, the music should play as normal.

It still has quite a bit of bugs either on the Game Boy side or on the MSU-1 side.

## Implemented
* Track playing, stopping and fading
* Music volume ducking upon fanfare play
* Save file compatibility

## Bug fixes/changes
### 2020-11-07
* MSU1:   Elevator behaving properly now
* GB:     Implement "Rival's Theme (Reprise)" and "Epilogue" properly
* SGB/GB: Fix healing event at home.
* SGB/GB: Fix Prof. Oak Pokedex rating sound effect

### 2020-10-29
* MSU1:   Fix music not cutting out on Bill event
* SGB/GB: Fix blackout glitch... again. :(
* MSU1:   Fix rival theme fading in (Cerulean City)
* MSU1:   Fix healing sound and HM fanfare on SS Anne Captain event.

### 2020-10-27
* MSU1: Fix music not halting when evolving
* MSU1: Attempt to fix buzz on FXPak (don't set volume on every frame)
* Pack: Fix incorrect looping on track 13

## Known bugs
* SGB/GB: Weird snare noises might play on some sound triggers.
* SGB/GB: Some Pokemon cries may be affected?
* SGB: Levelling up while the Low Health alarm sound is playing causes the fanfare to play after the alarm sound is turned off, locking the game for a short while in the process.

## PCM pack
PCM pack used is based on ABOHiccups' anime pack (with LGPE music to fill in the missing tracks).
Added/modified tracks compared to the original pack by ABOHiccups:
* Let's Go: Pewter City piano theme, used for the ending.
* Cut version of the rival theme used for Rival (Reprise)
* Some tracks are remastered.
* The wild battle theme is replaced with an edited version that shortens the
  intro and blends the tail with the loop point.
* Replace LGPE Route 11 music with the one from the original anime.
* Replace Origins VS Trainer music with the one from the original anime.
* Replace LGPE Indigo Plateau music with the one from the original anime.
* Mt Moon music from original anime.
* Track ordering modified.


## Building Instructions

See [**INSTALL.md**](INSTALL.md)

## BSNES Instructions

### What you need
* Unmodified Pokemon Red or Blue ROM, US version (has (UE)[S][!] at the end)
* Byuu's Beat patcher for BPS files
* PCM pack (see section above)
* A Super Game Boy 1 or 2 boot ROM.
* Blank pokemon_red_msu1.msu (or pokemon_blue_msu1.msu) file
* BSNES 114+ (FF) or BSNES Plus v5.58+. Both cross-platform. Currently would not work will Snes9x. (as of 2020-10-25)
    * v115 and latest BSNES builds for Windows: https://github.com/bsnes-emu/bsnes/releases
    * Latest BSNES Plus builds for Windows are available here: https://ci.appveyor.com/project/devinacker/bsnes-plus/branch/master/artifacts

### How
1. Make a new folder, copy (or create) the MSU file for the game as well as the PCM packs there.

2. Copy the SGB boot ROM to the folder, name it pokemon_red_msu1.sfc (or pokemon_blue_msu1.sfc)

3. Use the Beat patcher to patch the clean Pokemon Red/Blue ROM with the appropriate patch, and place the patched ROM in the folder. Name it whatever, but I recommend sticking to pokemon_red_msu1.gb (or pokemon_blue_msu1.gb) 

4. Open up BSNES, go to System -> Load Special -> Super Game Boy cartridge.

5. On Base cartridge, load pokemon_red_msu1.sfc (or pokemon_blue_msu1.sfc) and on Game Boy cartridge, load the patched Game Boy ROM.

If all goes well, you should be able to hear MSU-1 music.



## Track Order
01: Intro Battle

02: Title Screen

03: Pallet Town

04: Viridian City, Pewter City

05: Cerulean City, Fuschia City

06: Celadon City

07: Cinnabar Island

08: Vermilion City

09: Lavender Town

10: S.S. Anne

11: Routes 1, 2

12: Routes 24, 25, Prof. Oak Introduction

13: Routes 3-10, 16-22

14: Routes 11-15

15: Indigo Plateau

16: Pokemon Center

17: Gym

18: Prof. Oak's Laboratory

19: Rocket Game Corner

20: Rocket Hideout

21: Viridian Forest

22: Mt. Moon, Rock Tunnel, Caves

23: Cinnabar Mansion

24: Pokemon Tower

25: Silph Co. Building

26: Meet Prof. Oak

27: Rival's Theme

28: Rival's Theme (Reprise)

29: Meet Rocket Trainer

30: Meet Female Trainer

31: Meet Male/E4 Trainer

32: Follow Me / Guidepost

33: Evolution, Safari Zone

34: Bicycle

35: Surfing

--unused-- 36: Jigglypuff's Theme

37: Battle! Wild Pokemon

38: Battle! Trainer

39: Battle! Gym Leader, Lance

40: Battle! Champion

41: Victory! Wild Pokemon

42: Victory! Trainer

43: Victory! Gym Leader / Champion

44: Epilogue

45: Hall of Fame

46: Staff Roll



## Credits
* LuigiBlood
  * Helping me figure out where to even start with this project
  * Initial SNES/MSU1 help

* ABOWaffles
  * Creating the base PCM pack
  * FXPak testing

* Conn
  * SNES ASM help
  * FXPak testing and compatibility help
