@tool
extends EditorScript

enum Race {HOBBIT, ELF, HUMAN, DWARF, ORC, WIZARD}

func racial_profile(the_race: Race) -> void:
	match the_race:
		Race.HOBBIT:
			print("Race.HOBBIT")
		Race.DWARF, Race.WIZARD:
			print("Race.DWARF or Race.WIZARD")
		_:
			print("Not the race we want")
			
			
	if the_race == Race.HOBBIT:
		print("Race.HOBBIT")
	elif the_race == Race.DWARF:
		print("Race.DWARF")
	else:
		print("Not the race we want")

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn_race: Race = Race.HUMAN
	var legolas_race: Race = Race.ELF
	var gimli_race: Race = Race.DWARF
	
	racial_profile(gimli_race)
	racial_profile(legolas_race)
	
	print(aragorn_race)
	print(legolas_race)
	print(gimli_race)
	print(Race)
	print(Race.keys()[gimli_race])
