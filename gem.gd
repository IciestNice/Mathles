extends Area2D
var player: Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		$Sprite2D2.visible = false
		Global.gem_anim = true
		await get_tree().create_timer(6).timeout
		var tween = create_tween()
		tween.tween_property($"../Gem_scene", 'modulate:a', 0.0, 1.0)
		await get_tree().create_timer(0.5).timeout
		Global.removething = true
