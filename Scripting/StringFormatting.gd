@tool
extends EditorScript


class Enemy:
	
	var _n: String = ""
	func _init(n: String) -> void:
		_n = n
		
	func _to_string() -> String:
		return "Hello from %s" % _n


func _run() -> void:
	var text: String = "Gandalf the Grey"
	print(text.length())
	
	var name: String = "Aragorn"
	print(name[0])
	print(name[3])
	print(name[-1])
	
	var quote: String = "One Ring to rule them all"
	var small_string: String = quote.substr(2, 6)
	print(small_string)
	print(quote.substr(2, 6))
	
	var prophecy: String = "The heir of Isildur shall return."
	var found: int = prophecy.find("Isildur", 4)
	print(found)
	
	var spell: String = "Fireball"
	if spell.begins_with("Fire") == true:
		print("Fire")
	if spell.ends_with("all") == true:
		print("all")
	
	var wizard: String = "Gandalf"
	print(wizard.to_upper())
	print(wizard.to_lower())
	
	var lon_str: String = wizard.to_upper() + " " + spell
	print(lon_str)
	
	var format_string: String = "The fate of Middle-earth rests with %s." % "Frodo"
	print(format_string)
	
	var age: int = 10
	var fs: String = "%s looked at %s and said: %s" % [
		"Aragorn", "Frodo", age
	]
	print(fs)
	
	var enemy: Enemy = Enemy.new("Frodo")
	var short_str: String = str(enemy)
	var statement: String = "Enemy says: %s" % short_str
	print(statement)

	print("Gold coins>%010d<" % 12345)
	print("Mithril armor weight: %.3f" % 10.4567)
	print("Mithril armor weight: %10.3f" % 10.4567)
	
	var corruption: int = 72
	print("corruption is high at %d%%" % corruption)
	
