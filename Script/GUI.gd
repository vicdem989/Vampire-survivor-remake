extends MarginContainer

onready var number_label = $Bars/LifeBar/Count/Background/Number
onready var bar = $Bars/LifeBar/TextureProgress
onready var tween = $Tween

func _ready() -> void:
	var player_max_health = $"../Player".max_health
	bar.max_value = player_max_health
	update_health($Player.health)


func _on_Player_health_changed(player_health) -> void:
	update_health(player_health)

func update_health(new_value):
	number_label.text = str(new_value)
	bar.value = new_value
