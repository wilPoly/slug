extends KinematicBody2D

export (int) var speed: = 25
var velocity: = Vector2(1, 0)


func start(pos, direction):
	position = pos
	velocity = Vector2(direction.x * speed, 0)


func _physics_process(delta: float) -> void:
	move_and_collide(velocity * speed * delta)


func _on_screen_exited() -> void:
	queue_free()
