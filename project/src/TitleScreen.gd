extends Node2D

func _on_PlayButton_pressed():
	hide_title()
	show_intro()
	
func hide_title():
	$Title.hide()
	$PlayButton.hide()

func show_intro():
	$IntroText1.show()
	$IntroText2.show()
	$IntroText3.show()
	$ExitIntroButton.show()


func _on_ExitIntroButton_pressed():
	$IntroText1.hide()
	$IntroText2.hide()
	$IntroText3.hide()
	$ExitIntroButton.hide()
	$Background.hide()
	get_parent().new_game()
