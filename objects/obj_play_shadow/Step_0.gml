/// @description 
zoomCompX = 0;//camera_get_view_x(obj_camera.camera) + (obj_camera.view_w - 480)/8;
zoomCompY = 270 - camera_get_view_height(obj_camera.camera);

if zoomCompY > 58 {
//	zoomCompY = 58;
}

height = 275 - obj_camera.view_h;
invHeight = 0;

if obj_gui.inEditor = 0 {
	barMin = 0;
	/*if barMin < 30 {
		barMin += 10;
	} else {
		barMin = 30;
	}*/
} else {
	barMin = 0;
	/*if barMin > 0 {
		barMin -= 10;
	} else {
		barMin = 0;
	}*/
}

/*if obj_gui.inEditor = 0 {
	if wSize > 144 {
		wSize -= 4;
		hSize -= 2.25;
	} else {
		wSize = 144;
		hSize = 62;
	}
} else {
	wSize = 480;
	hSize = 270;
}
