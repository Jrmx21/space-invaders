extends CharacterBody2D

const  intervalX= 40
const speed=100
var isRight = true
var initialX


func _init() -> void:
	initialX = position.x
	
func _process(delta: float) -> void:
	
	if isRight:
		position+= transform.x * speed *delta
	else:
		position-= transform.x * speed *delta
		
	if position.x >=initialX+intervalX:
		isRight = !isRight
		print("cambia direccion")
	if position.x <= -initialX- intervalX:
		isRight = !isRight
		print("cambia direccion")
	
