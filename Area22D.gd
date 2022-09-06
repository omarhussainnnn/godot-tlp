extends Area2D

var dead = false;





func _process(delta):
	if dead == false:
		$AnimatedSprite.play("idel")


func _on_Area2D_area_entered(area):
	if area.is_in_group("Sword"):
		dead = true;
		$AnimatedSprite.play("did");

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "did":
		queue_free()
