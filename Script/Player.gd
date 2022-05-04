extends KinematicBody2D

signal health_changed
signal died

export var max_health = 18
var health = max_health

export var speed:int = 200
var velocity = Vector2.ZERO

func _on_Area2D_area_entered(area: Area2D) -> void:
	emit_signal("health_changed", health)
	#queue_free()

func _physics_process(delta:float) -> void:
	velocity = Vector2.ZERO
	$Player.stop()
	
	#Input movement
	if Input.is_action_pressed("right"):
		velocity.x += 1
		#$Player.play("run")
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		#$Player.play("run")
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	#if velocity.x == 0:
		#$Player.play("Idle")
		
	#Change direction
	if velocity.x > 0:
		$Player.flip_h = false
	elif velocity.x < 0:
		$Player.flip_h = true
	
	#Change player position
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)
