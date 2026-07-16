extends Node2D

@onready var plane: Sprite2D = $Plane
@onready var helicopter: Sprite2D = $Helicopter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("ready")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	plane.position.x += 100.0 * delta
	
	pass
