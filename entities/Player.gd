extends KinematicBody2D

var Bullet: = preload("res://objects/Bullet.tscn")

export (int) var speed: = 200
export (int) var jump_speed: = -400
export (int) var gravity: = 1200

var direction: = Vector2()
var velocity: = Vector2()
var jumping: = false

func _physics_process(delta: float) -> void:
	# Gravity
	velocity.y += gravity * delta
	# Movement dir
	get_input()
	if jumping and is_on_floor():
		jumping = false
	var movement: = speed * direction
	move_and_slide(movement, Vector2(0, -1))


func get_input() -> void:
	# Left-Right
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	# Jump
	if Input.is_action_pressed("jump") and is_on_floor():	
		jumping = true
		velocity.y = jump_speed
	# Shoot
	if Input.is_action_pressed("shoot"):
		shoot()


func shoot() -> String:
	return "shooting"
