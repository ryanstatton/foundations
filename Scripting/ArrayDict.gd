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
	
	
