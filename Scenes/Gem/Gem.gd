extends Area2D

const SPEED: float = 100.0
signal gem_off_screen
	

func die() -> void :
	set_process(false)
	queue_free()

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	
	position.y  += 100 * delta 
	if position.y > get_viewport_rect().end.y :
		gem_off_screen.emit()
		die()

func _on_area_entered(area: Area2D) -> void:
	die()
