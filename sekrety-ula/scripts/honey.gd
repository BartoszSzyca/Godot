extends Area2D

func _on_body_entered(body: Node2D) -> void:
	Events.on_honey_collect.emit()
	queue_free()
	
