extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# move by arrow
func _on_Right_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			position.x += 64;


func _on_Left_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			position.x -= 64;


func _on_Up_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			position.y -= 64;

# hide on collision and trigger entity
func _on_Right_body_entered(body):
	$Arrows/Right.hide();
	$Arrows/Right.input_pickable = false;


func _on_Right_body_exited(body):
	$Arrows/Right.show();
	$Arrows/Right.input_pickable = true;


func _on_Left_body_entered(body):
	$Arrows/Left.hide();
	$Arrows/Left.input_pickable = false;


func _on_Left_body_exited(body):
	$Arrows/Left.show();
	$Arrows/Left.input_pickable = true;


func _on_Up_body_entered(body):
	$Arrows/Up.hide();
	$Arrows/Up.input_pickable = false;


func _on_Up_body_exited(body):
	$Arrows/Up.show();
	$Arrows/Up.input_pickable = true;
