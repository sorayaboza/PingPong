extends Area2D

signal point_scored

func _on_body_entered(body):
	# If the body entering the area is Ball,
	if body is Ball:
		point_scored.emit()
