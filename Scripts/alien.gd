extends CharacterBody2D

const intervalX = 30
const speed = 10
var isRight = true
var initialX = 0.0


func _ready() -> void:
	# Guardar la posición inicial en el eje X
	initialX = position.x

func _process(delta: float) -> void:
	# Movimiento del alien
	if isRight:
		position += Vector2(speed * delta, 0)
	else:
		position -= Vector2(speed * delta, 0)

	# Cambiar dirección si excede el rango
	if position.x > initialX + intervalX:
		isRight = false
		print("pa la izq")
	elif position.x < initialX - intervalX:
		isRight = true
		print("pa la der")
		


func _on_timer_timeout() -> void:
	position += Vector2(0,speed)
	print("holi")
