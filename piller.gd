extends StaticBody2D
var positionx = $".".global_position.x
var positiony = $".".global_position.y
var music = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(positionx)
	print(positiony)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Global.removething == true:
		await get_tree().create_timer(0.1).timeout
		Global.removething = false
		var tween = create_tween()
		tween.tween_property($sprite4piller, "position", Vector2(positionx, positiony + 850), 4.0)\
		.set_ease(Tween.EASE_IN)
		$"../AudioStreamPlayer2D".play()
		await get_tree().create_timer(2.6).timeout
		$pillarshape2d.position = Vector2(747, 3900)
		
