extends Area3D

@onready var spawn_position = $"../../Extras/SpawnPosition"
@onready var player = get_tree().get_first_node_in_group("Player")

func _on_body_entered(body):
	# Checks if player is colliding with the dead zone & reset player position if true
	if body.is_in_group("Player"):
		player.global_position = spawn_position.global_position
		AudioManager.mymeattack_sfx.stop()
		AudioManager.die_sfx.play()
		$"..".queue_free()
