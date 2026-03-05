extends CharacterBody2D

var _velocity: float = 200.0
var _jump_velocity: float = -400.0

func _process(delta):
	velocity += get_gravity() * delta
	
	if Input.is_key_pressed(KEY_W) && is_on_floor():
		velocity.y = _jump_velocity
	
	if Input.is_key_pressed(KEY_D):
		velocity.x = _velocity
	elif Input.is_key_pressed(KEY_A):
		velocity.x = -_velocity
	else:
		velocity.x = 0
	move_and_slide()
	
