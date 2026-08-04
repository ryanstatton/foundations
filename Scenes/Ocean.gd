extends Node2D

@onready var plane: Sprite2D = %Plane
@onready var helicopter: Sprite2D = $Helicopter
@onready var eating_sound: AudioStreamPlayer = $EatingSound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	print("it just works")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var dir: Vector2 = plane.position.direction_to(helicopter.position)
	plane.look_at(get_global_mouse_position())
	#plane.move_local_x(200 * delta)
	#plane.move_local_x(60 * delta, true)
	helicopter.move_local_y(20 * delta)
	#helicopter.rotate(2 * delta)
	
	plane.position += plane.transform.x * 60.00 * delta
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(1.5 * delta)
		
	if Input.is_action_pressed("ui_right"):
		plane.rotate(-1.5 * delta)
		
	if Input.is_action_just_pressed("ui_accept"):
		plane.global_position = Vector2(350, 150)
	
	
