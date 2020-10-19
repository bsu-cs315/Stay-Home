extends RigidBody2D


func _on_DespawnTimer_timeout():
	get_parent().points += 1
	queue_free()

func _on_Pumpkin_body_entered(body):
	$PumpkinHitSound.play()
	$DespawnTimer.start()
