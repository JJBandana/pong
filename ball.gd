extends CharacterBody2D

@export var speed = 400

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]
	

func _physics_process(_delta):
	var collision_object = move_and_collide(velocity * speed * _delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.get_normal())
	
	
