extends CharacterBody2D

var _velocity: float = 300.0
var _jump_velocity: float = -300.0

func _process(delta):
	velocity += get_gravity() * delta
	
	if Input.is_action_pressed("ui_up") && is_on_floor():
		velocity.y = _jump_velocity
		
	if Input.is_action_pressed("ui_down") && !is_on_floor():
		velocity.y = -_jump_velocity * 2
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = _velocity
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -_velocity
	else:
		velocity.x = 0
	
	move_and_slide()
