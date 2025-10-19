extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0



func _physics_process(_delta: float) -> void:
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
		$AnimatedSprite2D.play("Up");
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
		$AnimatedSprite2D.play("Down");
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
		$AnimatedSprite2D.play("Left");
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
		$AnimatedSprite2D.play("Right");
	#if Input.is_action_pressed("ui_w"):
		#input_vector.y -= 1
	#if Input.is_action_pressed("ui_S"):
		#input_vector.y += 1
	#if Input.is_action_pressed("ui_A"):
		#input_vector.x -= 1
	#if Input.is_action_pressed("ui_D"):
		#input_vector.x += 1
	velocity = input_vector * 100

	move_and_slide()
