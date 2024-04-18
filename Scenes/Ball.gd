extends CharacterBody2D

class_name Ball

@export var initial_ball_speed = 20
# Everytime the ball hits a paddle, it will move a little faster.
# 102% faster every time.
@export var speed_multiplier = 1.02

var ball_speed = initial_ball_speed

func _ready():
	# Calling our function, start_ball
	start_ball()

# Collide function to move our ball.
func _physics_process(delta):
	# move_and_collide returns information about collision.
	var collision = move_and_collide(velocity * ball_speed * delta)
	# If we have a collision, 
	if(collision):
		# We bounce the ball at the opposite angle that it hit the wall.
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
	
func start_ball():
	# Resets our seed everytime the game is run.
	randomize()
	velocity.x = [-1, 1][randi() % 2] * initial_ball_speed
	velocity.y = [-0.8, 0.8][randi() % 2] * initial_ball_speed
