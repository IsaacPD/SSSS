extends KinematicBody2D

var Bullet = preload("res://Assets/Bullet.tscn")

const SPEED = 500
const UP = 1
const DOWN = -1

puppet var puppet_pos = Vector2()
puppet var puppet_velocity = Vector2()

var input = Vector2.ZERO
var velocity = Vector2.ZERO
var attack_cooldown_time = 250
var next_attack_time = 0
var isHost
var player_name

func init(isH):
	if !isH:
		rotate(PI)
	isHost = isH

func set_player_name(new_name):
	player_name = new_name
	get_groups().append(get_name())

func _physics_process(delta):
	var now = OS.get_ticks_msec()
	if now >= next_attack_time:
		rpc("play_anim", "default")
	# Settings movement vector according to user input
	if is_network_master():
		input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		velocity = input.normalized()
		
		if now >= next_attack_time:
			if Input.is_action_pressed("shoot"):
				next_attack_time = now + attack_cooldown_time
				rpc("shoot", get_name(), $Mouth.global_position, now)
		
		rset("puppet_velocity", velocity)
		rset("puppet_pos", position)
	else:
		velocity = puppet_velocity
		position = puppet_pos

	move_and_slide(velocity * SPEED)
	if not is_network_master():
		puppet_pos = position # To avoid jitter

sync func play_anim(anim_name, p_name):
	$AnimatedSprite.play(anim_name)	

sync func shoot(p_name, pos, now):
	var direction = UP
	if !isHost:
		direction = DOWN
	var bullet = Bullet.instance()
	bullet.init(p_name, direction)
	bullet.global_position = pos
	get_node("../..").add_child(bullet)
	rpc("play_anim", "shoot")
