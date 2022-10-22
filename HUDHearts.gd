extends CanvasLayer

var hearts = 3;
func _ready():
	$NumHearts.text = String(hearts)



func _on_enemy_lost_heart():
	hearts = hearts - 1
	if hearts == 0:
		get_tree().change_scene("res://GameOver.tscn")
	_ready()
