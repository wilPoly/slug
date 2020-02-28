extends KinematicBody2D

export (int) var speed: = 200
export (int) var jump_speed: = -400
export (int) var gravity: = 1200

var velocity: = Vector2()
var jumping: = false

func _physics_process(delta: float) -> void:
	get_input()
	velocity.y += gravity * delta
	if jumping and is_on_floor():
		jumping = false
	velocity = move_and_slide(velocity, Vector2(0, -1))
	pass

func get_input() -> void:
	velocity.x = (Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")) * speed
	var jump: = Input.is_action_pressed("ui_select")
	
	if jump and is_on_floor():
		jumping = true
		velocity.y = jump_speed
	
# https://docs.godotengine.org/en/stable/tutorials/physics/using_kinematic_body_2d.html#movement-and-collision
