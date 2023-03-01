extends KinematicBody2D
var velocity = Vector2.ZERO
var move_speed= 480
var gravity= 1200
var jump_force=- 540

func _physics_process(delta: float)-> void:
	velocity.y += gravity * delta
	var move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	if Input.is_action_just_pressed("jump"):
		velocity.y= jump_force
	velocity.x= move_speed * move_direction
	move_and_slide(velocity)

