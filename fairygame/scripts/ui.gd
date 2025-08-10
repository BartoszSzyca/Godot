extends CanvasLayer


@onready var score: Label = $Score

var coins :int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Events.on_coin_collect.connect(coins_collected)
	score.text = "Coins: " + str(coins)


func coins_collected():
	coins += 1
	score.text = "Coins: " + str(coins)
