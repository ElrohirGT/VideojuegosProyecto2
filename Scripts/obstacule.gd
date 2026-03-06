extends Node2D

@export var obstacle_color = GameEnums.Colors.CYAN
@export var obstacle_area = GameEnums.Areas.TOP

func _on_event_bus_orb_picked_up(orb_area: Variant, orb_color: Variant) -> void:
	if obstacle_area != orb_area and obstacle_color == orb_color:
		hide()
		$CollisionShape2D.set_deferred("disabled", true)
		$Sprite2D.hide()
		
	else:
		show()
		$CollisionShape2D.set_deferred("disabled", false)
		$Sprite2D.show()
