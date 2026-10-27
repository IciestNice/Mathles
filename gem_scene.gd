extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.modulate.a = 0.0
	$Sprite2D2.modulate.a = 0.0
	$TextEdit.modulate.a = 0.0
	$TextEdit2.modulate.a = 0.0
	$TextEdit.text = str(Global.difficulty - 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Global.gem_anim == true:
		$".".visible = true
		Global.gem_anim = false
		var tween1 = create_tween()
		tween1.tween_property($Sprite2D, 'modulate:a', 1.0, 2.0)
		await get_tree().create_timer(2.5).timeout
		var tween2 = create_tween()
		tween2.tween_property($Sprite2D2, 'modulate:a', 1.0, 1.0)
		var tween3 = create_tween()
		tween3.tween_property($TextEdit, 'modulate:a', 1.0, 1.0)
		$AudioStreamPlayer.play()
		await get_tree().create_timer(1.5).timeout
		$TextEdit.text = str(Global.difficulty)
		var tween4 = create_tween()
		tween4.tween_property($TextEdit2, 'modulate:a', 1.0, 0.25)
		var tween5 = create_tween()
		tween5.tween_property($TextEdit2, 'position', Vector2(923, 252), 1)
		await get_tree().create_timer(1.5).timeout
		var tween6 = create_tween()
		tween6.tween_property($TextEdit2, 'modulate:a', 0.0, 0.5)
		
		
		
