extends Node2D

export(PackedScene) var initial_scene;

export(AudioStream) var start_sound;
export(AudioStream) var credit_sound;
export(AudioStream) var quit_sound;

func _ready():
	$AnimationPlayer.play("Default");
	
func _input(event):
	if(event is InputEventAction && event.is_action_pressed("ui_cancel")):
		$CanvasLayer/Menu.show();
	
func _on_next_level(scene):
	if(!scene):
		$CanvasLayer/Menu.show();
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


func _on_Start_pressed():
	_init_level(initial_scene);
	$CanvasLayer/Menu.hide();
	$Music.stop();


func _on_Quit_pressed():
	get_tree().quit();


func _on_Start_mouse_entered():
	$SFX.stream = start_sound;
	$SFX.play();


func _on_Quit_mouse_entered():
	$SFX.stream = quit_sound;
	$SFX.play();


func _on_Credit_mouse_entered():
	$SFX.stream = credit_sound;
	$SFX.play();
