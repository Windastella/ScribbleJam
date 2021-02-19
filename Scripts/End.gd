extends AnimatedSprite


signal change_level
signal reset_level

func _on_TextureButton_pressed():
	emit_signal("change_level", null);
