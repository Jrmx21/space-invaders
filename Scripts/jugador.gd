extends CharacterBody2D

@export var bullet_scene : PackedScene
const SPEED = 300.0
var lifes = 3
var textoVidas
func _process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity = Vector2.LEFT * SPEED
	if Input.is_action_pressed("right"):
		velocity = Vector2.RIGHT * SPEED
		
	position += velocity * delta
	if Input.is_action_just_pressed("shoot"):
		shoot()
	textoVidas.text="Lifes: "+ str(lifes)
	if position.x<16:
		position.x=16
	elif position.x>656:
		position.x =656
func _ready() -> void:
	textoVidas = get_node("/root/MainScene/TextoVidas")
	
func shoot():
	var bullet = bullet_scene.instantiate()
	get_tree().root.add_child(bullet)
	bullet.transform = $Jugador/Marker2D.global_transform
