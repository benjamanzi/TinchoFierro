extends Sprite2D
@export var itemName = "1 Peso"
var value = 1

#Sirve para que cunado un objeto ingrese en su area, esta funcion se active.
func _on_area_2d_body_entered(body: Node2D) -> void: 
	if body is CharacterBody2D: 
		print("   Nooo miraa una moneda")
		body.add_to_inventory(itemName, value)
		queue_free()
