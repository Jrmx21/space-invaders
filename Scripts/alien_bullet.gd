extends Area2D

@export var speed = 200

func _process(delta):
	position += transform.x * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		queue_free() # elimina el proyectil
		body.lifes= body.lifes-1
		print("Vidas restantes: ",body.lifes)
		if body.lifes<0:
			get_tree().change_scene_to_file("res://Scenes/lost_game.tscn")
		
