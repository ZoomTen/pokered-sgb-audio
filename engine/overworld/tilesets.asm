LoadTilesetHeader:
	call GetPredefRegisters
	push hl
	call LoadTilesetHeaderOnly
	ld a, [hl]
	ldh [hTilesetType], a
	xor a
	ldh [hMovingBGTilesCounter1], a
	pop hl
	ld a, [wCurMapTileset]
	push hl
	push de
	ld hl, DungeonTilesets
	ld de, $1
	call IsInArray
	pop de
	pop hl
	jr c, .asm_c797
	ld a, [wCurMapTileset]
	ld b, a
	ldh a, [hPreviousTileset]
	cp b
	jr z, .done
.asm_c797
	ld a, [wDestinationWarpID]
	cp $ff
	jr z, .done
	call LoadDestinationWarpPosition
	ld a, [wYCoord]
	and $1
	ld [wYBlockCoord], a
	ld a, [wXCoord]
	and $1
	ld [wXBlockCoord], a
.done
	ret

LoadTilesetHeaderOnly:
	ld d, 0
	ld a, [wCurMapTileset]
	add a
	add a
	ld b, a
	add a
	add b ; a = tileset * 12
	jr nc, .noCarry
	inc d
.noCarry
	ld e, a
	ld hl, Tilesets
	add hl, de
	ld de, wTilesetBank
	ld c, $b
.copyTilesetHeaderLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	ret z
	jr .copyTilesetHeaderLoop

INCLUDE "data/tilesets/dungeon_tilesets.asm"

INCLUDE "data/tilesets/tileset_headers.asm"
