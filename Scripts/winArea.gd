extends Node2D

var count = 0

func _on_body_entered(body: CharacterBody2D) -> void:
	count += 1
	
	if count == 2:
		get_tree().change_scene_to_file("res://Scenes/level1.tscn")
