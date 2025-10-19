extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass




#func _on_the_wat_body_entered(body: Node2D) -> void:
	#if body is CharacterBody2D:
		#if Input.is_action_pressed("ui_c"):
			#get_tree().change_scene_to_file("res://Clues.tscn")



#Forward moving paths
func _reay() -> void:
	$Computer/Path2D/PathFollow2D/password.moving = true
	$Computer/Path2D/PathFollow2D/password.move_speed =1.0
	$Cuboard/pASS/PathFollow2D/Area2D2.moving = true
	$Cuboard/pASS/PathFollow2D/Area2D2.move_speed =1.0
	$Phone/Path2D/PathFollow2D/TheWat.moving = true
	$Phone/Path2D/PathFollow2D/TheWat.move_speed =1.0
	$Bed/Path2D/PathFollow2D/Area2D.moving = true
	$Bed/Path2D/PathFollow2D/Area2D.move_speed =1.0
	$Safe/Path2D/PathFollow2D.moving = true
	$Safe/Path2D/PathFollow2D.move_speed =1.0
	$Bed/Path2D/PathFollow2D.moving = true
	$Bed/Path2D/PathFollow2D.move_speed =1.0
	$Key/Path2D/PathFollow2D/Path2D/PathFollow2D.moving = true
	$Key/Path2D/PathFollow2D/Path2D/PathFollow2D.move_speed =1.0
	$"Door path/Path2D/PathFollow2D/Path2D/PathFollow2D".moving = true
	$"Door path/Path2D/PathFollow2D/Path2D/PathFollow2D".move_speed=1.0
func _physics_process(delta: float) -> void:
	const move_speed := 100.2
	$Phone/Path2D/PathFollow2D.progress += move_speed+delta
	$Computer/Path2D/PathFollow2D.progress += move_speed+delta
	$Cuboard/pASS/PathFollow2D.progress += move_speed+delta
	$Bed/Path2D/PathFollow2D.progress += move_speed+delta
	$Safe/Path2D/PathFollow2D.progress += move_speed+delta
	$Key/Path2D/PathFollow2D/Path2D/PathFollow2D.progress += move_speed+delta
	$"Door path/Path2D/PathFollow2D/Path2D/PathFollow2D".progress += move_speed+delta























#Computer Password
func _on_password_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_q"):
			if Input.is_action_pressed("ui_j"):
				if Input.is_action_pressed("ui_r"):
					if Input.is_action_pressed("ui_s"):
						$Computer/Binary.play("Note")
func _on_password_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_q"):
			if Input.is_action_pressed("ui_j"):
				if Input.is_action_pressed("ui_r"):
					if Input.is_action_pressed("ui_s"):
						$Computer/Binary.play("Note")
#Screen on
func _on_comp_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Computer/Comp/AnimatedSprite2D.play("ON")
func _on_comp_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Computer/Comp/AnimatedSprite2D.play("ON")

#NoteCubord
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$Cuboard/AnimatedSprite2D.play("Note")


func _on_area_2d_2_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$Cuboard/AnimatedSprite2D.play("Note")


#Opens Cuboard
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Cuboard/Area2D/AnimatedSprite2D.play("Open")
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Cuboard/Area2D/AnimatedSprite2D.play("Close")

#To other room
func _on_the_wat_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Clues.tscn")

func _on_the_wat_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Clues.tscn")


#Open the safe
func _on_safee_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_5"):
			if Input.is_action_pressed("ui_3"):
				if Input.is_action_pressed("ui_1"):
					if Input.is_action_pressed("ui_e"):
						if Input.is_action_pressed("ui_s"):
							if Input.is_action_pressed("ui_b"):
								if Input.is_action_pressed("ui_n"):
									if Input.is_action_pressed("ui_4"):
										if Input.is_action_pressed("ui_j"):
														$Key/Path2D/PathFollow2D.progress_ratio = 0.99999
														$Safe/AnimatedSprite2D.play("Open")
func _on_safee_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_g"):
														$Key/Path2D/PathFollow2D.progress_ratio = 0.99999
														$Safe/AnimatedSprite2D.play("Open")


#Bed Note
func _on_bed_not_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$Bed/AnimatedSprite2D.play("AN")
func _on_bed_not_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$Bed/AnimatedSprite2D.play("AN")



func _on_pick_key_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$Player/CharacterBody2D/AnimatedSprite2D2.play("Key")
			$Safe/AnimatedSprite2D.play("Took key")
			$"Door path/Path2D/PathFollow2D".progress_ratio = 1.0
func _on_pick_key_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$Player/CharacterBody2D/AnimatedSprite2D2.play("key")
			$Safe/AnimatedSprite2D.play("Took key")
			$"Door path/Path2D/PathFollow2D".progress_ratio = 1.0


func _on_dooropen_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Finalwalk.tscn")


func _on_dooropen_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://FinalWalk.tscn")


func _on_escapew_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Start.tscn")


func _on_escapew_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Start.tscn")
