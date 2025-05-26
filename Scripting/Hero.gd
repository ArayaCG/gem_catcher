extends Character

class_name Hero

var _special_ability: String

func _init(new_name: String, new_race: String, 
			new_health: int, new_weapon: String, 
			new_ability: String ) -> void:
	super(new_name, new_race, new_health, new_weapon)
	_special_ability = new_ability

func attack():
	print("%s ignores their weapon %s!" % [_name, _weapon])

func use_ability():
	print("%s uses %s to turn the tide of battle!" % [
		_name, _special_ability
	])
