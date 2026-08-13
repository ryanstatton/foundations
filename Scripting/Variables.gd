@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("Hello I need a beer")
	var age: int = 139
	var player_name: String = "Gimli"
	var health: float = 42.5
	var is_alive: bool = true
	print(age)
	print(type_string(typeof(age)))
	print(player_name)
	print(type_string(typeof(player_name)))
	print(player_name)
	print(type_string(typeof(health)))
	print(is_alive)
	print(type_string(typeof(is_alive)))
	
	var npc_name: String = "Xendros"
	var npc_age: int = 54
	var npc_health: float = 80
	var npc_is_alive: bool = true
	
	print(npc_name, ": " , npc_age , ", " , npc_health , ", " , npc_is_alive)
	
