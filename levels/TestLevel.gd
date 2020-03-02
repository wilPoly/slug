extends Node2D



func _on_Player_debug_velocity(velocity) -> void:
	$CanvasLayer/HSplitContainer/Velocity.text = str(velocity)


func _on_Player_debug_direction(direction) -> void:
	$CanvasLayer/HSplitContainer/Direction.text = str(direction)
