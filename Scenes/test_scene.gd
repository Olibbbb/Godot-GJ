extends Node2D

@onready var money_label = $Label
var player

func _ready() -> void:
	player = Player.new()
	

func _on_timer_timeout() -> void:
	player.generate_money()
	money_label.text = str(player.money)
