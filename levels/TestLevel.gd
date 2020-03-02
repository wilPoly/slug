extends Node2D



func _on_Player_debug_velocity(velocity) -> void:
	$Velocity.text = str(velocity)


func _on_Player_debug_direction(direction) -> void:
	$Direction.text = str(direction)
