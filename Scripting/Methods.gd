@tool
extends EditorScript

func attack_enemy(damage: int, enemy: String = "Troll")  -> void:
	print("attack_enemy enemy ", enemy)
	print("attack_enemy damage ", damage)

func get_player_health() -> int:
	var p_health: int = randi() % 100 + 1
	return p_health

func roll_dice() -> void:
	print("Rolling a dice... ")
	var result: int = randi() % 20 + 1
	print("You rolled a ", result)

func try_to_change_number(num: int) -> void:
	num += 10
	print("Inside method, num is: ", num)

func add_item(inventory: Array) -> void:
	inventory.append("Sword")
	print("Inside method inventory is = ", inventory)

func takes_damage(current_health: int, damage: int) -> int:
	current_health -= damage
	if current_health < 0:
		current_health = 0
	return current_health



# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	roll_dice()
	var health = get_player_health()
	print("Player health = ", health)
	attack_enemy(20, "Orc")
	attack_enemy(50)
	
	var n: int = 5
	print("Before method n is = ", n)
	try_to_change_number(n)
	print("After method n is = ", n)
	
	var inv: Array = ["Shield"]
	print("Before method inv is = ", inv)
	add_item(inv)
	print("After method inv is = ", inv)
	
	print(health)
	health = takes_damage(health, 30)
	print(health)
	if health == 0:
		print("Game over!")
	else:
		print("Still alive")
