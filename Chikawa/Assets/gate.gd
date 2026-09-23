extends Node3D

@export var next_scene: String = "res://Scenes/Main_2.tscn"
@export var required_score: int = 9


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player") and GameManager.getscore() >= required_score:
		print("Next scene: ", next_scene)

		if next_scene == "" or next_scene == "res://":
			print("ยังไม่ได้กำหนด Scene ปลายทาง")
			return

		get_tree().change_scene_to_file(next_scene)
