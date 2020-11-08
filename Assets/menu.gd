extends Control

func _ready():
	gamestate.connect("player_list_changed", self, "refresh_lobby")
	if OS.has_environment("USERNAME"):
		$Connect/Name.text = OS.get_environment("USERNAME")
	else:
		var desktop_path = OS.get_system_dir(0).replace("\\", "/").split("/")
		$Connect/Name.text = desktop_path[desktop_path.size() - 2]

func _on_host_pressed():
	$Players.visible = true
	$Connect.visible = false
	
	$Connect.hide()
	$Players.show()

	var player_name = $Connect/Name.text
	gamestate.host_game(player_name)
	refresh_lobby()


func _on_join_pressed():
	var ip = $Connect/IPText.text
	if not ip.is_valid_ip_address():
		print("Invalid IP address!")
		return

	$Connect/Host.disabled = true
	$Connect/Join.disabled = true
	$Players/Start.disabled = true
	
	$Connect.hide()
	$Players.show()

	var player_name = $Connect/Name.text
	gamestate.join_game(ip, player_name)

func _on_start_pressed():
	gamestate.begin_game()

func refresh_lobby():
	var players = gamestate.get_player_list()
	players.sort()
	$Players/List.clear()
	$Players/List.add_item(gamestate.get_player_name() + " (You)")
	for p in players:
		$Players/List.add_item(p)

	$Players/Start.disabled = not get_tree().is_network_server()
