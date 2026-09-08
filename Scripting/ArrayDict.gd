@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var rings_of_power: Array[String] = ["Elves", "Dwarves", "Men"]
	rings_of_power[1] = "Wargs"
	var d: String = rings_of_power[1]
	var random_ring: String = rings_of_power.pick_random()
	
	rings_of_power.append("Hobbits")
	rings_of_power.append("Orcs")
	rings_of_power.append("Wizards")
	
	
	#rings_of_power.erase("Elves")
	print("First in array pos 0: ", rings_of_power[0])
	print("Second in array pos 1: ", d)
	print("Array printed: ", rings_of_power)
	print("Random item from array: ", random_ring)
	
	rings_of_power.shuffle()
	print("Array after being shuffled: ", rings_of_power)
	print("Size of array: ", rings_of_power.size())
	
	if "Men" in rings_of_power:
		print("The race of Men have a ring!")
	else:
		print("No hobbit rings found")
		
	for race in rings_of_power:
		print(race, " have a ring!")
		
	var total_turns: int = 27
	for turn in range(total_turns):
		var index: int = turn % rings_of_power.size()
		var member: String = rings_of_power[index]
		print("Turn, ", turn, " : ", member, " have come for the ring!")
		
	#var level_items: Array[String] = ["Wooden sword", "Steel knife"]
	
	var level_items: Dictionary[int, String] = {
		1: "Wooden Sword",
		2: "Steel knife",
		5: "Dwarven axe",
		6: "Mithril armor",
		7: "Arundil, flame of the west",
		9: "Ring of power",
		10: "The one ring"
	}
	
	for level in level_items:
		print("Level %d -> %s" % [level, level_items[level]])
	
	for level_item in level_items.values():
		print(level_item)
	
	level_items[5] = "Elven bow"
	level_items.erase(6)
	
	print(level_items)
	
	var fellowship_dict: Dictionary[String, Dictionary] = {
		"Frodo": {"race": "Hobbit","weapon": "Sting"},
		"Sam": {"race": "Hobbit","weapon": "Cooking pan"},
		"Merry": {"race": "Hobbit","weapon": "Dagger"},
		"Pippin": {"race": "Hobbit","weapon": "Dagger"},
		"Aragorn": {"race": "Human","weapon": "Anduril"},
		"Boromir": {"race": "Human","weapon": "Shield and sword"},
		"Legolas": {"race": "Elf","weapon": "Bow and daggers"},
		"Gandalf": {"race": "Wizard","weapon": "Glamdring"},
		"Gimli": {"race": "Dwarve","weapon": "Battle Axe"}
	}
	
	var hero: String = "Aragorn"
	var hero_weapon: String = fellowship_dict[hero]["weapon"]
	print(hero_weapon)
	
	if "Legolas" in fellowship_dict:
		print(fellowship_dict["Legolas"])
	
	var inventory: Array[String] = ["Stick", "Apple", "Torch"]
	inventory.append("Sword")
	inventory.append("Shield")
	inventory.erase("Apple")
	
	if "Sword" in inventory:
		print("Sword equipped!")
	else:
		print("No sword")
	
	for item in inventory:
		print(item)
	
	var heroes: Dictionary[String, Dictionary] = {
		"Frodo": {"race": "Hobbit", "weapon": "Sting"},
		"Aragorn": {"race": "Human", "weapon": "Andúril"},
		"Legolas": {"race": "Elf", "weapon": "Bow"}
	}
		
	# Add Gimli
	# Change Legolas weapon
	# Print Aragorn weapon
	# use a for loop to print all races and weapons
	
	heroes["Gimli"] = {"race": "Dwarve", "weapon": "Battle Axe"}
	heroes["Aragorn"].weapon = "Hands"
	print(heroes["Aragorn"].weapon)
	
	for peoples in heroes.values():
		var race: String = peoples.race
		var weapon: String = peoples.weapon
		print(race, " -> Weapon: ")
		
		
	
	
