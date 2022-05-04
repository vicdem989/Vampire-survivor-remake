extends Node2D

var t = 0.0

func _process(delta: float) -> void:
	t = 0.5 * delta
	#if is_instance_valid($Player):
		#$Enemy.position = $Enemy.position.linear_interpolate($Player.position, t)
		#$Enemy2.position = $Enemy2.position.linear_interpolate($Player.position, t)
		#$Enemy.position = $Enemy.position + ($Player.position - $Enemy.position) * t
