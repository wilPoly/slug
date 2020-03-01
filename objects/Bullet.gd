extends KinematicBody2D

export (int) var speed: = 25
var velocity: = Vector2()


func start(pos):
	position = pos
	velocity = Vector2(speed, 0)


func _physics_process(delta: float) -> void:
	move_and_collide(velocity * speed * delta)


func _on_screen_exited() -> void:
	queue_free()
