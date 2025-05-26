@tool
extends EditorScript


func _run() -> void:
	
	print("\n---------")
	
	var aragorn: Character = Character.new(
		"Aragorn", "Human", 100, "Andúril"
	)	
	
	print(aragorn.health)
	aragorn.health = 200
	print(aragorn.health_f)
	
	print(Character.get_character_count())
	print(Character.character_count)
	Character.character_count += 1
	print(Character.character_count)
	
