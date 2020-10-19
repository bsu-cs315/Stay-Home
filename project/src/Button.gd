extends RigidBody2D

func _on_Button_body_entered(body):
	get_parent().game_over()
