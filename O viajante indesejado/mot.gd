extends KinematicBody2D

export var speed=64
export var health=1
var velocity=Vector2.ZERO
var move_direction=-1

func _physics_process(delta:float) -> void:
	velocity.x=speed * move_direction
	
	velocity=move_and_slide(velocity)
	
	
