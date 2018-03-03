/// @description 
if instance_exists(targetPlace) {
	if targetPlace.held = 0 {
		x = targetPlace.x;
		y = targetPlace.y;
	}
} else {
	instance_destroy();
}
