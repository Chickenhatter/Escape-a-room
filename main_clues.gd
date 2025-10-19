extends Node2D

#Paths
func _reay() -> void:
	$"Pocket poster/Path2D/PathFollow2D".moving = true
	$"Pocket poster/Path2D/PathFollow2D".move_speed =1.0
	$"Real Iphone/Path2D/PathFollow2D".moving = true
	$"Real Iphone/Path2D/PathFollow2D".move_speed =1.0
	$PhoneTele/Path2D/PathFollow2D.moving = true
	$PhoneTele/Path2D/PathFollow2D.move_speed =1.0
func _physics_process(delta: float) -> void:
	const move_speed := 1000.2
	$"Pocket poster/Path2D/PathFollow2D".progress += move_speed+delta
	$"Real Iphone/Path2D/PathFollow2D".progress += move_speed+delta
	$PhoneTele/Path2D/PathFollow2D.progress += move_speed+delta

#The Poster
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_p"):
			$Player/CharacterBody2D/AnimatedSprite2D2.play("poster")
		elif Input.is_action_pressed("ui_l"):
			$Player/CharacterBody2D/AnimatedSprite2D2.play("Nothing")
			$Player/CharacterBody2D/AnimatedSprite2D3.play("No_Phone")

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_p"):
			$Player/CharacterBody2D/AnimatedSprite2D2.play("poster")
		elif Input.is_action_pressed("ui_l"):
			$Player/CharacterBody2D/AnimatedSprite2D2.play("Nothing")


func _on_realdphone_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_i"):
			if Input.is_action_pressed("ui_o"):
				if Input.is_action_pressed("ui_n"):
					if Input.is_action_pressed("ui_g"):
						if Input.is_action_pressed("ui_j"):
							if Input.is_action_pressed("ui_y"):
								$Player/CharacterBody2D/AnimatedSprite2D3.play("Phone")


func _on_realdphone_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_i"):
			if Input.is_action_pressed("ui_o"):
				if Input.is_action_pressed("ui_n"):
					if Input.is_action_pressed("ui_g"):
						if Input.is_action_pressed("ui_j"):
							if Input.is_action_pressed("ui_y"):
								$Player/CharacterBody2D/AnimatedSprite2D3.play("Phone")
		if Input.is_action_pressed("ui_f"):
			$"Real Iphone/AnimatedSprite2D".play("ON")



#		if Input.is_action_pressed("ui_I"):
#			if Input.is_action_pressed("ui_o"):
#				if Input.is_action_pressed("ui_n"):
#					if Input.is_action_pressed("ui_g"):
#						if Input.is_action_pressed("ui_y"):
#							if Input.is_action_pressed("ui_j"):


func _on_p_honesjoff_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"Real Iphone/AnimatedSprite2D".play("Off")


func _on_telephort_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Bedroom.tscn")


func _on_telephort_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
