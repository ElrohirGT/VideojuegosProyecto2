extends Node

var count = 0

func _on_area_2d_2_body_entered(body: CharacterBody2D) -> void:
	count += 1
	
	if count == 2:
		get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")


func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	_on_area_2d_2_body_entered(body)
