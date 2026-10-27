extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Global.buttonispressed == true:
		Global.open = true
		$".".visible = true
	if Global.open == false or Global.removething == true:
			$".".visible = false
			Global.open = false
