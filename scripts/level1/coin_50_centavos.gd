extends Sprite2D
@export var itemName = "50 centavos"
var value = 0.50

#Sirve para que cunado un objeto ingrese en su area, esta funcion se active.
func _on_area_2d_body_entered(body: Node2D) -> void: 
	if body is CharacterBody2D: 
		print("   Nooo miraa una moneda")
		body.add_to_inventory(itemName, value)
		queue_free()
		
