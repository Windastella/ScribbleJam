extends Node2D

signal change_level
signal reset_level

enum PIECES {KING, QUEEN, ROOK, KNIGHT, BISHOP, PAWN}
export (PIECES) var answer = PIECES.KING;

export (PackedScene) var next_level;

export(AudioStream) var button_sound;
export(Array, AudioStream) var win_sounds : Array;

func _ready():
	$AudioStreamPlayer.play();

func _answer(piece):
	$CanvasLayer/UI/Options.hide();
	# correct
	if(answer == piece):
		var i = round(rand_range(0, win_sounds.size() - 1));
		$SFX.stream = win_sounds[i];
		$SFX.play();
		$CanvasLayer/Win.show();
	else:
		emit_signal("reset_level");
		
func _on_King_pressed():
	_answer(PIECES.KING);


func _on_Queen_pressed():
	_answer(PIECES.QUEEN);


func _on_Rook_pressed():
	_answer(PIECES.ROOK);


func _on_Knight_pressed():
	_answer(PIECES.KNIGHT);


func _on_Bishop_pressed():
	_answer(PIECES.BISHOP);


func _on_Pawn_pressed():
	_answer(PIECES.PAWN);

func _on_Goal_body_entered(body):
	if body is Player:
		$CanvasLayer/UI.show();


func _on_Mute_toggled(button_pressed):
	if(button_pressed):
		AudioServer.set_bus_mute(0, true);
	else:
		AudioServer.set_bus_mute(0, false);


func _on_Menu_pressed():
	emit_signal("change_level", null);

func _on_Restart_pressed():
	emit_signal("reset_level");
	
func _on_Continue_pressed():
	emit_signal("change_level", next_level);


func _on_mouse_entered():
	$SFX.stream = button_sound;
	$SFX.play();
