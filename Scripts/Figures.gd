extends Node2D
class_name Figures

export (Array, Texture) var dialogues;

export (Array, AudioStream) var hint_sounds;
export (Array, AudioStream) var mumble_sounds;

func _ready():
	for tex in dialogues:
		var texrect = TextureRect.new();
		texrect.texture = tex;
		$dialog/CenterContainer/GridContainer.add_child(texrect);
	$AnimationPlayer.play("Default");

func show_interaction():
	var i = round(rand_range(0, hint_sounds.size() - 1));
	$SFX.stream = hint_sounds[i];
	$SFX.play();
	$interact_sprite.show();
	
	
func hide_interaction():
	$interact_sprite.hide();
	$dialog.hide();

func _on_interact_pressed():
	var i = round(rand_range(0, mumble_sounds.size() - 1));
	$SFX.stream = mumble_sounds[i];
	$SFX.play();
	
	$interact_sprite.hide();

	$dialog.show();
	
	get_tree().paused = true;

func _on_dialog_pressed():
	$interact_sprite.show();

	$dialog.hide();
			
	get_tree().paused = false;
