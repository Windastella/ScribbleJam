extends Node2D

#figures
var cell_location
var figure_cell_sprite = -1
var selected = false

#board
var board_cell_sprite = -1
var frames = 0
var is_colored = false
var paint = false


func changePaint():
	var figures_map = $figures_tile_map;
	var pos = cell_location
	paint = !paint
	if paint == false: $board_tile_map.set_cellv(pos, board_cell_sprite)
	board_cell_sprite = $board_tile_map.get_cellv(pos)
	frames = 0.250

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var figures_map = $figures_tile_map
	if frames >= 0.250:
		frames = 0
		if paint:
			var pos = cell_location
			if is_colored:
				$board_tile_map.set_cellv(pos, board_cell_sprite)
				is_colored = false
			else: 
				$board_tile_map.set_cellv(pos, 16)
				is_colored = true
	frames+=delta

func _input(event):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
		var temp_location = $figures_tile_map.world_to_map(event.position)
		var temp_sprite = $figures_tile_map.get_cellv(temp_location)
		if selected:
			$figures_tile_map.set_cellv(cell_location, -1)
			$figures_tile_map.set_cellv(temp_location, figure_cell_sprite)
			figure_cell_sprite = -1
			selected = false
			changePaint()
		elif (temp_sprite != -1):
			cell_location = temp_location
			figure_cell_sprite = temp_sprite
			selected = true
			changePaint()
