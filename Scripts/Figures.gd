extends Node2D
class_name Figures

export (Array, Texture) var dialogues; 

func _ready():
	for tex in dialogues:
		var texrect = TextureRect.new();
		texrect.texture = tex;
		$dialog/CenterContainer/GridContainer.add_child(texrect);
	$AnimationPlayer.play("Default");

func show_interaction():
	$interact_sprite.show();
	
func hide_interaction():
	$interact_sprite.hide();

	$dialog.hide();
		
func _on_Interact_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			$interact_sprite.hide();

			$dialog.show();


func _on_Dialog_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			$interact_sprite.show();

			$dialog.hide();
