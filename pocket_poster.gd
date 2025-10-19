extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Input.is_action_pressed("ui_p"):
		$AnimatedSprite2D.play("poster")
	#else:
		#$AnimatedSprite2D.play("Nothing")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
