extends Node2D

const GEM = preload("res://Scenes/Gem/Gem.tscn")

func spawn_gem() -> void:
	var new_gem = GEM.instantiate()
	
	var screen_rect = get_viewport_rect()
	
	var x_pos: float = randf_range(screen_rect.position.x, screen_rect.end.x)

	new_gem.position = Vector2(x_pos, -50.0)

	add_child(new_gem)


func _on_paddle_area_entered(area: Area2D) -> void:
	print ("collision", area)

func _on_gem_off_screen() -> void:
	print ("que onda")

func _on_timer_timeout() -> void:
	spawn_gem()
