extends CharacterBody2D

var speed : int = 300.0
var ball : CharacterBody2D
var direction: float

func _ready():
	ball = get_parent().get_node("Ball")
	
func _physics_process(_delta):
	
	direction = get_ai_direction()
	if direction:
		velocity.y = direction * speed
	
	move_and_slide()
	
func get_ai_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0
