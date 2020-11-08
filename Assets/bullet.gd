extends Area2D

export var speed = 750

var parent
var direction

func init(p, dir):
	parent = p
	direction = dir

func _physics_process(delta):
	position.y += speed * delta * direction

func _on_Bullet_body_entered(body):	
	var bodyName = body.get_name()
	if bodyName != parent and (int(bodyName) in gamestate.players || int(bodyName) == get_tree().get_network_unique_id()):
		queue_free()	
