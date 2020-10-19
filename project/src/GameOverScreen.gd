extends CanvasLayer

func _on_Button_pressed():
	get_tree().reload_current_scene()

func show_game_over_screen():
	$Background.show()
	$GameOverText.show()
	$PlayAgainButton.show()
