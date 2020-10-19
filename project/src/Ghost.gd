extends RigidBody2D

func _on_Ghost_body_entered(body):
	$GhostHitSound.play()
	$DeathTimer.start()

func _on_DeathTimer_timeout():
	get_parent().points -= 1
	queue_free()
