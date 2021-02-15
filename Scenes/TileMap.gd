extends TileMap

var cell_sprite = -1
var frames = 0
var is_colored = false
var paint = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


func changePaint():
	var figures_map = get_node("/root/Main/figures_tile_map")
	var pos = figures_map.cell_location
	paint = !paint
	if paint == false: set_cell(pos.x, pos.y, cell_sprite)
	cell_sprite = get_cell(pos.x, pos.y)
	frames = 0.250

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var figures_map = get_node("/root/Main/figures_tile_map")
	if frames >= 0.250:
		frames = 0
		if paint:
			var pos = figures_map.cell_location
			if is_colored:
				set_cell(pos.x, pos.y, cell_sprite)
				is_colored = false
			else: 
				set_cell(pos.x, pos.y, 16)
				is_colored = true
	frames+=delta
