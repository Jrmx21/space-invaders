extends Area2D

@export var speed = 700
var textoAliens: RichTextLabel
func _process(delta):
	position += transform.x * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
func _ready() -> void:
	textoAliens = get_node("/root/MainScene/TextoAliens")
	check_no_more_enemies()
func check_no_more_enemies():
	var enemies = get_tree().get_nodes_in_group("Enemies")
	var character_body_enemies = enemies.filter(func(node):
		return node is CharacterBody2D
	)
	
	
	if character_body_enemies.size() <= 1:
		print("No quedan más enemigos")
		
		get_tree().change_scene_to_file("res://Scenes/win_menu.tscn")
	else:
		textoAliens.text="Aliens Left: "+str(character_body_enemies.size()-1)
		print("Quedan ", character_body_enemies.size(), " enemigos.")
var current_enemy

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		check_no_more_enemies()
		current_enemy=body
		var sprite = body.get_node_or_null("Sprite2D")
		if sprite:
			sprite.frame = 2
		queue_free() 
		body.queue_free()
