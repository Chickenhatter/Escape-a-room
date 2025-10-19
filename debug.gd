extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _reay() -> void:
	$Phone/Path2D/PathFollow2D/TheWat.moving = true
	$Phone/Path2D/PathFollow2D/TheWat.move_speed =1.0
