extends Node2D


export(PackedScene) var initial_scene;

func _ready():
	_init_level(initial_scene);
	
func _on_next_level(scene):
	if(!scene):
		get_tree().quit();
		return;
		
	_remove_level();
	_init_level(scene);
	
func _remove_level():
	$Level.free();
	var container = Node2D.new();
	container.name = "Level";
	add_child(container);
	
func _init_level(scene):
	var level = scene.instance();
	level.connect("change_level",self,"_on_next_level");
	$Level.add_child(level);
