extends Node2D

func _ready() -> void:
	pass
# Called when the node e nters the scene tree for the first time.
func _reay() -> void:
	$Phone/Path2D2/PathFollow2D.moving = true
	$Phone/Path2D2/PathFollow2D.move_speed =1.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
func _physics_process(delta: float) -> void:
	const move_speed := 100.2
	$Phone/Path2D2/PathFollow2D.progress += move_speed+delta


func _on_sam_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Bedroom.tscn")


func _on_sam_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Bedroom.tscn")
