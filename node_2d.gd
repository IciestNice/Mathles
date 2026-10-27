extends CharacterBody2D
const speed = 300.0
const jump_velocity = -400.0
var graity = ProjectSettings.get_setting("physics/2d/default_gravity")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta: float):
	pass
	
	
func _physics_process(delta: float):
	
	if not is_on_floor():
		velocity.y = graity * delta
		
	if Input.is_action_just_pressed('Jump') and is_on_floor() == true:
		velocity.y = jump_velocity
	
	var direction = Input.get_axis('Left', 'Right')
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
