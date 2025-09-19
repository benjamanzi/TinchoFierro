extends Node2D

signal activated

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D: 
		var trampas = get_tree().get_nodes_in_group("trampas")
		for trampa in trampas:
			if trampa.has_method("activar"):
				trampa.activar()
		queue_free()
