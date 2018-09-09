extends RigidBody2D

var jump_speed = 600
var speed = 300

func _ready():
	#_fixed_process(true)
	pass

func _process(delta):
	var left_key = Input.is_action_pressed('ui_left')
	var right_key = Input.is_action_pressed('ui_right')

	if left_key:
		set_linear_velocity(Vector2(-speed, get_linear_velocity().y))
	if right_key:
		set_linear_velocity(Vector2(speed, get_linear_velocity().y))
		
func collision(body):
	if body.is_in_group('paddles'):
		set_linear_velocity(Vector2(0,-jump_speed))
	pass
