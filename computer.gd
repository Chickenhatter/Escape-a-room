extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _reay() -> void:
	$Path2D/PathFollow2D/password.moving = true
	$Path2D/PathFollow2D/password.move_speed =1.0
func _physics_process(delta: float) -> void:
	const move_speed := 100.2
	$Path2D/PathFollow2D.progress += move_speed+delta



func _on_password_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_a"):
			if Input.is_action_pressed("ui_c"):
				if Input.is_action_pressed("ui_m"):
					if Input.is_action_pressed("ui_b"):
						if Input.is_action_pressed("ui_v"):
							$Binary.play("On")


func _on_comp_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Comp/AnimatedSprite2D.play("On")
