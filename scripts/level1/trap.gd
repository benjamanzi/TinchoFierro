extends Node2D

var falling := false
var speed := 200.0

func _ready() -> void:
	for trapTrigger in get_tree().get_nodes_in_group("trigger"):
		trapTrigger.activated.connect(_disparador)

func _disparador():
	queue_free()
