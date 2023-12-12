extends Area2D
class_name DoorComponent

var _player_ref: Character = null

@export_category("Variables")
@export var _teleport_position: Vector2
#1088 200

@export_category("Objects")
@export var _animation: AnimationPlayer = null

func _on_body_entered(_body) -> void:
	if _body is Character:
		_player_ref = _body
		_animation.play("open")
		print("A")
		

func _on_animation_finished(_anim_name: String) -> void:
	if _anim_name == "open":
		_player_ref.global_position = _teleport_position
		_animation.play("close")

