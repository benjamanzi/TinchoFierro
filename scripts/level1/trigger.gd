extends Node2D

signal activated

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D: 
		emit_signal("activated")
		queue_free()
