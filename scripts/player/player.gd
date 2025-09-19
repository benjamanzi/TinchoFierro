extends CharacterBody2D

const SPEED = 300
const JUMP_VELOCITY = -450
var inventory = {}

func _physics_process(delta: float) -> void: 
	if not is_on_floor():
		velocity += get_gravity() * delta 
	if Input.is_action_just_pressed("ui_accept") && is_on_floor():
		velocity.y = JUMP_VELOCITY
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else: 
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()

func add_to_inventory(itemName, value):
	# Si el ítem ya está en el inventario, suma su valor.
	if inventory.has(itemName):
		inventory[itemName] += value
	# Si no, agrégalo con su valor inicial.
	else:
		inventory[itemName] = value
	print("Inventario: ", inventory)
