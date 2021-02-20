extends Node2D
class_name Figures

export (Array, Texture) var dialogues;
signal show_dialog
signal hide_dialog

export (Array, AudioStream) var hint_sounds;
export (Array, AudioStream) var mumble_sounds;

func _ready():
	for tex in dialogues:
		var texrect = TextureRect.new();
		texrect.texture = tex;
		$dialog/CenterContainer/GridContainer.add_child(texrect);
	$AnimationPlayer.play("Default");
	var players = get_tree().get_nodes_in_group("Player")
	var player = players[players.size() - 1]
	connect("show_dialog", player, "_on_show_dialog")
	connect("hide_dialog", player, "_on_hide_dialog")

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
	emit_signal("show_dialog");
	$dialog.show();
	
	get_tree().paused = true;

func _on_dialog_pressed():
	$interact_sprite.show();
	emit_signal("hide_dialog")

	$dialog.hide();
	get_tree().paused = false;
