# Script para el Area2D
extends Area2D

func _on_body_entered(body: Node2D) -> void:
	# Verificamos si el 'body' que entró es el jugador.
	# Es una buena práctica poner al jugador en un grupo "player"
	if body is CharacterBody2D:
		var soportes = get_tree().get_nodes_in_group("soporte_de_paredes")
		for soporte in soportes:
			soporte.queue_free()
		print("trampa activada")
		queue_free()
