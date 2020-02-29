extends KinematicBody2D

export (int) var speed: = 200
var velocity: = Vector2()

func _physics_process(delta: float) -> void:
	velocity.x += speed * delta
	move_and_collide(velocity)
