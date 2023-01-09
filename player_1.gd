extends CharacterBody2D

const speed = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var direction: float


func _physics_process(_delta):
	
	velocity = Vector2.ZERO

	direction = Input.get_axis("p1_up", "p1_down")
	if direction:
		velocity.y = direction * speed

	move_and_slide()
