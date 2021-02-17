extends Node2D


enum PIECES {KING, QUEEN, ROOK, KNIGHT, BISHOP, PAWN}
export (PIECES) var answer = PIECES.KING;

func _answer(piece):
	$UI/Options.hide();
	# correct
	if(answer == piece):
		pass
	# incorrect
	else:
		pass

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
		$UI/Options.show();
