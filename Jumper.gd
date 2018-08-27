extends RigidBody2D

const GRAVITY = 200
const WALK_SPEED = 200
var velocity = Vector2()

func _physics_process(delta):
    velocity.y += delta * GRAVITY

    if Input.is_action_pressed("ui_left"):
        velocity.x = -WALK_SPEED
    elif Input.is_action_pressed("ui_right"):
        velocity.x =  WALK_SPEED
    else:
        velocity.x = 0
#func collition(body):
#	velocity.bounce(5)