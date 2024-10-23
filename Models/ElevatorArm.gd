extends Node3D

var used = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	if body.is_in_group("Player") :
		$Timer2.start()
		await $Timer2.timeout
		$AnimationPlayer.play("Start")
   

		


func _on_area_3d_body_exited(body):

	if body.is_in_group("Player") :
		$Timer2.start()
		await $Timer2.timeout
		$AnimationPlayer.play_backwards("Start")
