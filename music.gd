extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.game_song == true:
		if $gamemusic.playing == false:
			$gamemusic.play()
	elif Global.game_song == false:
		$gamemusic.stop()
	
	if Global.tutorial_song == true:
		if $tutorialmusic.playing == false:
			$tutorialmusic.play()
	elif Global.tutorial_song == false:
		$tutorialmusic.stop()
		
	if Global.gem_anim == true:
		var tween1 = create_tween()
		tween1.tween_property($gamemusic, "volume_db", -10.0, 1.0)
		var tween2 = create_tween()
		tween2.tween_property($tutorialmusic, "volume_db", -10.0, 1.0)
		await get_tree().create_timer(6).timeout
		var tween3 = create_tween()
		tween3.tween_property($gamemusic, "volume_db", 0.0, 1.0)
		var tween4 = create_tween()
		tween4.tween_property($tutorialmusic, "volume_db", 0.0, 1.0)
		
