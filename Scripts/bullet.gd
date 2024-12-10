extends Area2D

@export var speed = 700

func _process(delta):
	position += transform.x * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

var current_enemy
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		current_enemy=body
		var sprite = body.get_node_or_null("Sprite2D")
		if sprite:
			print("Sprite encontrado:", sprite)
			sprite.frame = 2
		queue_free() 
		body.queue_free()
