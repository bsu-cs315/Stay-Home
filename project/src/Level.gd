extends Node2D

var points : int = 0
var playing : bool = false

func _process(delta):
	get_node("Player/Camera/UI/Score").text = "Score: " + str(points)

func new_game():
	playing = true
	get_node("Player").enable_camera()
	
