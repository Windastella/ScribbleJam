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

func _on_interact_pressed():
	$interact_sprite.hide();

	$dialog.show();
	
	get_tree().paused = true;

func _on_dialog_pressed():
	$interact_sprite.show();

	$dialog.hide();
			
	get_tree().paused = false;
