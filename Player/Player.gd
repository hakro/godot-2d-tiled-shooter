extends KinematicBody2D

const SPEED = 180

func _process(delta):
	
	var direction = Vector2()
	var is_moving = false
	
	if Input.is_action_pressed("ui_right"):
		direction += Vector2(1, 0)
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = false
		is_moving = true
	if Input.is_action_pressed("ui_left"):
		direction += Vector2(-1, 0)
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = true
		is_moving = true
	if Input.is_action_pressed("ui_down"):
		direction += Vector2(0, 1)
		$AnimatedSprite.play("run")
		is_moving = true
	if Input.is_action_pressed("ui_up"):
		direction += Vector2(0, -1)
		$AnimatedSprite.play("run")
		is_moving = true
		
	if !is_moving:
		$AnimatedSprite.play("idle")

	move_and_slide(direction.normalized() * SPEED)