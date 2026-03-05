extends Node2D

@export var color = GameEnums.Colors.CYAN
@export var area = GameEnums.Areas.BOTTOM

signal picked_up(area, color)


func _on_body_entered(body: Node2D) -> void:
	hide()
	
	picked_up.emit(area, color)
	$CollisionShape2D.set_deferred("disabled", true)
