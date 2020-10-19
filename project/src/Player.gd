extends KinematicBody2D

const RUN_SPEED := 200
const JUMP_SPEED := -600
const GRAVITY := 1200
var velocity := Vector2()
var jumping := false

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_select')

	if jump and is_on_floor():
		$JumpSound.play()
		if !right and !left:
			jumping = true
			$JumpTimer.start()
			$AnimatedSprite.play("jump")
		velocity.y = JUMP_SPEED
	if right:
		$AnimatedSprite.play("walk_right")
		velocity.x += RUN_SPEED
	if left:
		$AnimatedSprite.play("walk_left")
		velocity.x -= RUN_SPEED
	if !left and !right and !jumping:
		$AnimatedSprite.play("idle")

func _physics_process(delta):
	if get_parent().playing:
		get_input()
		velocity.y += GRAVITY * delta
		velocity = move_and_slide(velocity, Vector2(0, -1))

func _on_JumpTimer_timeout():
	jumping = false

func enable_camera():
	$Camera/UI/Score.show()
	$Camera.make_current()
	
