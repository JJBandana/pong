extends Node2D

var playerScore = 0
var aiScore = 0

func _ready():
	$PlayerScore.text = "0"
	$AIScore.text = "0"


func _on_right_wall_body_entered(body):
	$Ball.position = Vector2(640,360)
	$PlayerScore.text = str(playerScore)
	playerScore = playerScore + 1


func _on_left_wall_body_entered(body):
	$Ball.position = Vector2(640,360)
	$AIScore.text = str(aiScore)
	aiScore = aiScore + 1	
	
