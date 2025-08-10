extends Area2D

var flower : int = 0

func _on_body_entered(body: Node2D) -> void:
	print('flower1', flower)
	if flower == 0:
		print('flower1', flower)
		Events.on_honey_collect.emit()
		flower += 1
