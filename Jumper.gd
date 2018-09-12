extends RigidBody2D

var world = "res://Main.tscn"

export(NodePath) var camera_path
var camera

var height
var width
var jump_speed = 600
var speed = 300

func _ready():
	camera = get_node(camera_path)
	height = get_viewport().get_visible_rect().size.y
	width = get_viewport().get_visible_rect().size.x
	pass

func _process(delta):
	var left_key = Input.is_action_pressed('ui_left')
	var right_key = Input.is_action_pressed('ui_right')

	if left_key:
		set_linear_velocity(Vector2(-speed, get_linear_velocity().y))
	if right_key:
		set_linear_velocity(Vector2(speed, get_linear_velocity().y))
		
#	if !left_key and !right_key:
#		set_linear_velocity(Vector2(0, get_linear_velocity().y))


func collision(body):
	if body.is_in_group('paddles') and get_linear_velocity().y > 0:
		set_linear_velocity(Vector2(0,-jump_speed))
	pass

func _on_VisibilityNotifier2D_screen_exited():
	#if get_global_position().y > camera.get_position().y:
	get_tree().change_scene(world)
