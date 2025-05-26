class_name Character 

static var character_count: int = 0

static func get_character_count() -> int:
	return character_count


var _name: String
var _race: String
var _health: int
var _weapon: String


var health: int = 50: 
	get:
		print("getter")
		return health
	set(value):
		print("setter:", value)
		if value > 100:
			value = 100
		health = value


var health_f: String:
	get:
		return "hlth:%d" % health


func _init(new_name: String, new_race: String, 
				new_health: int, new_weapon: String) -> void:
	_name = new_name
	_race = new_race
	_health = new_health
	_weapon = new_weapon
	character_count += 1
	print("new character:", character_count)


func attack():
	print("%s swings their %s in battle!" % [_name, _weapon])
