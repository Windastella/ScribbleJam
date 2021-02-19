extends Node2D
class_name Figures

export (Array, Texture) var dialogues;
signal show_dialog
signal hide_dialog

func _ready():
	for tex in dialogues:
		var texrect = TextureRect.new();
		texrect.texture = tex;
		$dialog/CenterContainer/GridContainer.add_child(texrect);
	$AnimationPlayer.play("Default");
	var players = get_tree().get_nodes_in_group("Player")
	var player = players[players.size() - 1]
	self.connect("show_dialog", player, "_on_show_dialog")
	self.connect("hide_dialog", player, "_on_hide_dialog")

func show_interaction():
	$interact_sprite.show();
	
func hide_interaction():
	$interact_sprite.hide();

	$dialog.hide();
		
func _on_Interact_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			$interact_sprite.hide();
			emit_signal("show_dialog")
			$dialog.show();


func _on_Dialog_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if(event.button_index == BUTTON_LEFT && event.pressed):
			$interact_sprite.show();
			emit_signal("hide_dialog")
			$dialog.hide();
