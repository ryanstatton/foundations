@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var text: String = "Gandalf the Grey"
	print(text.length())
	
	var name: String = "Aragorn"
	print(name[0])
	print(name[3])
	print(name[-3])
	
	var quote: String = "The one ring to rule them all"
	var small_string: String = quote.substr(2)
	print(small_string)
	
	var prophecy: String = "The heir of Isildur will return"
	var found: int = prophecy.find("Isildur")
	print(prophecy.substr(found, "Isildur".length()))
	
	var spell: String = "Fireball"
	if spell.begins_with("Fire") == true:
		print("Fire")
	if spell.ends_with("all") == true:
		print("all")
	
	var age: int = 27
	var health: float = 52.50
	
	var ps: String = "Health: %.2f \nAge %d" % [health, age]
	print(ps)
	
