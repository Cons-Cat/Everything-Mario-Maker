/// @description Follow player
if obj_player.held = 0 {
	x = obj_player.x;
	y = obj_player.y + yZoomOff;
}

if x < 240*8 {
	x = 240*8;
}
if x > room_width - 270*8 {
	x = room_width - 270*8;
}
if y < 140*8 + yZoomOff {
	y = 140*8 + yZoomOff;
}
if y > 430*8 + yZoomOff {
	y = 430*8 + yZoomOff;
}
