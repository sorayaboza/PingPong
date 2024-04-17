extends RigidBody2D

# This is our speed.
@export var speed = 300

func _physics_process(delta):
	# Zero vector, a vector with all components set to 0
	var movement =  Vector2.ZERO # ZERO = Vector2(0, 0) or (x, y)
	if Input.is_action_pressed("move_up"):
		# # Up unit vector. Y is down in 2D, so this vector points -Y.
		movement = Vector2.UP # UP = Vector2(0, -1)
	if Input.is_action_pressed("move_down"):
		# Down unit vector. Y is down in 2D, so this vector points +Y.
		movement = Vector2.DOWN # DOWN = Vector2(0, 1)
	
	# The body's linear velocity in pixels per second.
	linear_velocity = movement * speed
