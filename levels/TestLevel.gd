extends Node2D


func _ready() -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = true
		$PauseMenu.show()


func _process(delta: float) -> void:
	pass


func _on_Player_debug_velocity(velocity) -> void:
	$CanvasLayer/HSplitContainer/Velocity.text = str(velocity)


func _on_Player_debug_direction(direction) -> void:
	$CanvasLayer/HSplitContainer/Direction.text = str(direction)
