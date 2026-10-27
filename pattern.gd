extends TextEdit
var a = 1 * Global.difficulty
var b = 2 * Global.difficulty
var c = 4 * Global.difficulty
var d = 5 * Global.difficulty
@onready var pattern = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pattern.text = str(a) + ', ' + str(b) + ', ' + '?' + ', ' + str(c) + ', ' + str(d)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
