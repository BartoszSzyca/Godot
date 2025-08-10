extends CanvasLayer

@onready var score: Label = $Score
var honey :int = 0

func _ready() -> void:
	Events.on_honey_collect.connect(honey_collected)
	score.text = "H: " + str(honey)
	
func honey_collected():
	honey +=1
	score.text = "H: " + str(honey)
	if honey == 20:
		get_tree().reload_current_scene()
