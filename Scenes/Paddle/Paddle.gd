extends Area2D

const SPEED: float = 300.0

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	#if Input.is_action_pressed("move_left"):
	#	position.x -= SPEED * delta
	#elif Input.is_action_pressed("move_right"):
	#	position.x += SPEED * delta
	var movement: float = Input.get_axis("move_left", "move_right")
	position.x += SPEED * delta * movement
	
	position.x = clampf(
		position.x,
		Game.get_vpr().position.x + 33 ,
		Game.get_vpr().end.x - 33
	)



func _on_area_entered(area: Area2D) -> void:
	print("hola")
