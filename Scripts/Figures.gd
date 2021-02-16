extends Node2D
class_name Figures

export (Array, Texture) var dialogues; 

func show_interaction():
	$interact_sprite.visible = true
	
func hide_interaction():
	$interact_sprite.visible = false
