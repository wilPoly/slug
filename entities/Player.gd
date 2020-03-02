extends KinematicBody2D

var Bullet: = preload("res://objects/Bullet.tscn")

# DEBUG
signal debug_velocity
signal debug_direction

export (int) var player_speed: = 200
export (int) var jump_speed: = -400
export (int) var gravity: = 1200

var velocity: = Vector2()
var direction: = Vector2(1, 0)
var jumping: = false


func _physics_process(delta: float) -> void:
	# Gravity
	velocity.y += gravity * delta
	# Movement dir
	get_direction()
	get_input()
#	if velocity.x != 0:
#		$RayCast2D.cast_to = velocity
	if jumping and is_on_floor():
		jumping = false
	# Movement
	velocity = move_and_slide(velocity, Vector2(0, -1))
	
	# DEBUG - Broadcast velocity
	emit_signal("debug_velocity", velocity)
	emit_signal("debug_direction", direction)


func get_input() -> void:
	# Left-Right
	velocity.x = (Input.get_action_strength("right") - Input.get_action_strength("left")) * player_speed
	# Jump
	if Input.is_action_pressed("jump") and is_on_floor():	
		jumping = true
		velocity.y = jump_speed
	# Shoot
	if Input.is_action_just_pressed("shoot"):
		shoot()


func get_direction() -> void:
	if velocity.x < 0:
		direction = Vector2(-1, 0)
		$Sprite.flip_h = true
	elif velocity.x > 0:
		direction = Vector2(1, 0)
		$Sprite.flip_h = false
	

func shoot() -> void:
	var b = Bullet.instance()
	b.start($Muzzle.global_position, direction)
	get_parent().add_child(b)
