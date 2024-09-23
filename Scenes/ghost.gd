extends Area2D

var speed: int
var direction_x: float

func _ready():
	var rng := RandomNumberGenerator.new()
	
	$Sprite2D.modulate = Color(rng.randi_range(0, 1), 1, 1)
	
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(width, width * 1.1)
	var random_y = rng.randi_range(0, 720)
	position = Vector2(random_x, random_y)
	
	speed = rng.randi_range(200, 300)
	
func _process(delta):
	position += Vector2(-1.0, 0) * speed * delta


func _on_area_entered(area: Area2D) -> void:
	print(area)
	$Sprite2D.visible = false
	$AnimatedSprite2D.play("default")
	await get_tree().create_timer(0.5).timeout
	queue_free()
