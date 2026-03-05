extends Node2D

signal orb_picked_up(orb_area, orb_color)


func _on_orb_picked_up(area: Variant, color: Variant) -> void:
	orb_picked_up.emit(area, color)
