extends Area2D

var durability=40

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if durability<=40 and durability>30:
		$Sprite2D.frame=0
	elif durability<=30 and durability>20:
		$Sprite2D.frame=1
	elif durability<=20 and durability>10:
		$Sprite2D.frame=2
	elif durability<=10 and durability>0:
		$Sprite2D.frame=3
	elif durability<=0:
		queue_free()




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemies"):
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	print(area)
	if  area.is_in_group("AlienBullet"):
		durability= durability-2
		print(durability)
		area.queue_free()
	if durability<=40 and durability>30:
		$Sprite2D.frame=0
	elif durability<=30 and durability>20:
		$Sprite2D.frame=1
	elif durability<=20 and durability>10:
		$Sprite2D.frame=2
	elif durability<=10 and durability>0:
		$Sprite2D.frame=3
	elif durability<=0:
		queue_free()
