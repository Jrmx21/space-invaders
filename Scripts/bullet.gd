extends Area2D

@export var speed = 700

func _process(delta):
	print(transform)
	position += transform.x * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		queue_free() # elimina el proyectil
		body.queue_free() 
		
