extends KinematicBody2D

const GRAVITY = 200
var screensize
var velocity = Vector2()

func _ready():
	pass

func _process(delta):
    if Input.is_action_pressed("ui_right"):
        velocity.x += 1
    if Input.is_action_pressed("ui_left"):
        velocity.x -= 1