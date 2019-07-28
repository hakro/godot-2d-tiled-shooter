extends ColorRect

func _process(delta):
	$Label.text = "FPS : " + str(Engine.get_frames_per_second())