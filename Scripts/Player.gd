extends KinematicBody2D
class_name Player

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()
var move_sounds = [
	load("res://assets/Sounds/Movement_sound_1.wav"),
	load("res://assets/Sounds/Movement_sound_2.wav"),
	load("res://assets/Sounds/Movement_sound_3.wav"),
	load("res://assets/Sounds/Movement_sound_4.wav"),
	load("res://assets/Sounds/Movement_sound_5.wav")
]

var right_body = null
var left_body = null
var up_body = null

var should_show_right = false
var should_show_left = false
var should_show_up = false

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_show_dialog():
	should_show_left = $Arrows/Left.visible
	should_show_right = $Arrows/Right.visible
	should_show_up = $Arrows/Up.visible
	hide_arrows()
	
func _on_hide_dialog():
	if(should_show_left): $Arrows/Left.show()
	if(should_show_right): $Arrows/Right.show()
	if(should_show_up): $Arrows/Up.show()

func hide_arrows():
	$Arrows/Up.hide()
	$Arrows/Left.hide()
	$Arrows/Right.hide()

# move by arrow
func _on_Right_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			position.x += 64;
			play_move_sound()

func _on_Left_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			position.x -= 64;
			play_move_sound()


func _on_Up_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			position.y -= 64;
			play_move_sound()
	
# hide on collision and trigger entity
func _display_interaction(body):
	if(body is Figures):
		body.show_interaction()

func _hide_interaction(body):
	if(body is Figures):
		body.hide_interaction()
		
func _on_Right_body_entered(body):
	right_body = body
	$Arrows/Right.hide();
	$Arrows/Right.input_pickable = false;
	_display_interaction(body);


func _on_Right_body_exited(body):
	if(right_body == body):
		$Arrows/Right.show();
	$Arrows/Right.input_pickable = true;
	_hide_interaction(body)


func _on_Left_body_entered(body):
	left_body = body
	$Arrows/Left.hide();
	$Arrows/Left.input_pickable = false;
	_display_interaction(body);


func _on_Left_body_exited(body):
	if(left_body == body):
		$Arrows/Left.show();
	$Arrows/Left.input_pickable = true;
	_hide_interaction(body)


func _on_Up_body_entered(body):
	up_body = body
	$Arrows/Up.hide();
	$Arrows/Up.input_pickable = false;
	#_display_interaction(body);

func _on_Up_body_exited(body):
	if(up_body == body):
		$Arrows/Up.show();
	$Arrows/Up.input_pickable = true;
	#_hide_interaction(body)

func _on_Down_body_entered(body):
	$Arrows/Down.hide();
	$Arrows/Down.input_pickable = false;
	#_display_interaction(body);

func _on_Down_body_exited(body):
	$Arrows/Down.show();
	$Arrows/Down.input_pickable = true;
	#_hide_interaction(body)


func play_move_sound():
	$AudioStreamPlayer.stream = move_sounds[rng.randi_range(0, move_sounds.size()-1)]
	$AudioStreamPlayer.play()
