extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cell_location
var cell_sprite = -1
var selected = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
		var temp_location = world_to_map(event.position)
		var temp_sprite = get_cell(temp_location.x, temp_location.y)
		if selected:
			set_cell(cell_location.x, cell_location.y, -1)
			set_cell(temp_location.x, temp_location.y, cell_sprite)
			cell_sprite = -1
			selected = false
			get_node("/root/Main/board_tile_map").changePaint()
		elif (temp_sprite != -1):
			cell_location = temp_location
			cell_sprite = temp_sprite
			selected = true
			get_node("/root/Main/board_tile_map").changePaint()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
