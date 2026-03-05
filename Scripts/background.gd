extends Sprite2D

@export var area = GameEnums.Areas.TOP

var black_texture
var cyan_texture
var pink_texture

var color_to_texture = {}

func _ready() -> void:
	var black_gradient = Gradient.new()
	black_gradient.add_point(0.0, Color(0, 0, 0)) # Red at the start
	black_gradient.add_point(0.99, Color(0, 0, 0)) # Blue at the end
	
	var pink_gradient = Gradient.new()
	pink_gradient.add_point(0.0, Color("FF206E")) # Red at the start
	pink_gradient.add_point(0.99, Color("FF206E")) # Blue at the end
	
	var cyan_gradient = Gradient.new()
	cyan_gradient.add_point(0.0, Color("35E9D1")) # Red at the start
	cyan_gradient.add_point(0.99, Color("35E9D1")) # Blue at the end
	
	cyan_texture = GradientTexture1D.new()
	cyan_texture.gradient = cyan_gradient
	
	pink_texture = GradientTexture1D.new()
	pink_texture.gradient = pink_gradient
	
	black_texture = GradientTexture1D.new()
	black_texture.gradient = black_gradient
	
	color_to_texture = {
		GameEnums.Colors.CYAN: cyan_texture,
		GameEnums.Colors.PINK: pink_texture
	}

func _on_event_bus_orb_picked_up(orb_area: Variant, orb_color: Variant) -> void:
	if orb_area == area:
		set_texture(black_texture)
	else:
		set_texture(color_to_texture[orb_color])
