extends Area2D

@export var speed := 600

func _ready() -> void:
	var tween = create_tween()
	tween.tween_property($Sprite2D,"scale", Vector2(1, 1), 0.5)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * delta
