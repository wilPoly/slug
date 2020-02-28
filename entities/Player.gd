extends KinematicBody2D

export var speed: = 10

func _physics_process(delta: float) -> void:
	var velocity: = Vector2()
	var direction: = get_input() * speed
	velocity.x += direction
	move_and_collide(velocity)
	pass

func get_input() -> float:
	var input: = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	return input
