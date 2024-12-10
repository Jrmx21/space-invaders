extends CharacterBody2D
@export var bullet_scene : PackedScene
const intervalX = 30
const speed = 10
var isRight = true
var initialX = 0.0


func _ready() -> void:
	# Guardar la posición inicial en el eje X
	initialX = position.x
	$Sprite2D.frame= randi_range(0,1)
 # Colores: azul, amarillo, naranja
	var colors = [
		Color(0, 0, 1),  # Azul
		Color(1, 1, 0),  # Amarillo
		Color(1, 0.5, 0) # Naranja
	]
	
	# Elegir un color aleatorio
	$Sprite2D.modulate = colors[randi() % colors.size()]
func _process(delta: float) -> void:
	# Movimiento del alien
	if isRight:
		position += Vector2(speed * delta, 0)
	else:
		position -= Vector2(speed * delta, 0)

	# Cambiar dirección si excede el rango
	if position.x > initialX + intervalX:
		isRight = false
	elif position.x < initialX - intervalX:
		isRight = true


func _on_timer_timeout() -> void:
	position += Vector2(0,speed)

func shoot():
	var bullet = bullet_scene.instantiate()
	get_tree().root.add_child(bullet)
	bullet.transform = $Sprite2D/Marker2D.global_transform


func _on_timer_2_timeout() -> void:
	var dado = randi_range(1,50)
	if dado==3:
		shoot()
	if position.y> 700:
		get_tree().change_scene_to_file("res://Scenes/lost_game.tscn")
	
