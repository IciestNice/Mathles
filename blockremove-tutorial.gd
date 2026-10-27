extends RigidBody2D
var tween = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Global.buttonispressed == true:
		Global.removething = true
		Global.buttonispressed = false
	
	if Global.removething == true:
		var tween = create_tween().bind_node($Pillar)
		print('ts tween')
		Global.removething = false
		tween.tween_property($piller_sprite, "position", Vector2(747, 1100), 4.0)\
		.set_ease(Tween.EASE_IN)
		await get_tree().create_timer(2.5).timeout
		$CollisionShape2D.position = Vector2(747, 3900)
	
func run_in_background():
	if Global.new_area == true:
		tween.kill()
		Global.removething = false
