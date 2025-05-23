# tile_slot.gd
extends Node2D

var occupied_tile = null
var row: int
var col: int

func is_occupied() -> bool:
	return occupied_tile != null

func assign_tile(tile):	
	occupied_tile = tile

func remove_tile():
	occupied_tile = null

func _ready():
	add_to_group("tile_slots")

	# Extract index from node name (e.g., "TileSlot1" → index = 0)
	var index_str = name.replace("TileSlot", "")
	var index = int(index_str) - 1
	row = int(index / 15)
	col = int(index % 15)
