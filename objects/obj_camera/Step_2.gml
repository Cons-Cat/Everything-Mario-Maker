// Zoom out
if obj_gui.inEditor = 1 {
	obj_gui.instanceSelected = 0;
	if zoom_level < 1 {
		zoom_level += 0.05;
		
		obj_gui.topOffset -= 0.5;
		obj_gui.shadowAlpha += 0.195;
		
		if gridAlpha < 1 {
			gridAlpha += 0.295;
		} else {
			gridAlpha = 1;
		}
		if zoom_level < 0.85 {
			//obj_gui.shadowAlpha += 0.295;
		}
		
		yZoomOff -= yZoomOffVal;
	}
	
	if guiZoom < 1 {
		guiZoom += guiZoomVal;
	}
	if guiZoom > 1 {
		guiZoom = 1;
	}
}
// Zoom in
if obj_gui.inEditor = 0 {
	if zoom_level > 0.8 {
		//obj_camera.x = camera_get_view_x(obj_camera.camera) + 240;
		zoom_level -= 0.05;
		
		obj_gui.topOffset += 0.5;
		obj_gui.shadowAlpha -= 0.295;
		
		if gridAlpha > 0 {
			gridAlpha -= 0.295;
		} else {
			gridAlpha = 0;
		}
		if zoom_level > 0.95 {
			//obj_gui.shadowAlpha -= 0.295;
		}
		
		yZoomOff += yZoomOffVal;
	}
	
	if guiZoom > 0.8 {
		guiZoom -= guiZoomVal;
	}
	if guiZoom < 0.8 {
		guiZoom = 0.8;
	}
}

layer_background_alpha(gridId, gridAlpha);

//Get current size
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
var rate = 0.2;

//Get new sizes by interpolating current and target zoomed size
new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

//Get the shift necessary to re-align the view.
shift_x = camera_get_view_x(view_camera[0]) - (new_w - view_w) * 0.5;
shift_y = camera_get_view_y(view_camera[0]) - (new_h - view_h) * 0.6;

//Update the view position
camera_set_view_pos(view_camera[0], shift_x, shift_y);

if obj_gui.inEditor = 1 {
	if view_w > 3839 {
		xTemp = camera_get_view_x(view_camera[0]) - (480*8 - view_w)/2;
		yTemp = camera_get_view_y(view_camera[0]) - (270*8 - view_h)/2 + yZoomOff;
		zoomOutGone = 0;
		
		zoomOffOriginY = y;
		zoomOffY = 0;
		zoomOffOriginX = x;
		zoomOffX = 0;
	} else {
		if zoomOutGone = 0 {
			xTemp = camera_get_view_x(view_camera[0]) - 364;
			if camera_get_view_y(camera) < 2160 {
				yTemp = camera_get_view_y(view_camera[0]) - 248 - (yZoomOff);
			} else {
				yTemp = camera_get_view_y(view_camera[0]) - 248;
			}
			
			zoomOutGone = 1;
		}
		zoomOffY = zoomInOriginY - y + yZoomOff;
		zoomOffX = zoomInOriginX - x;
	}
} else {
	zoomOffY = zoomOffOriginY - y + yZoomOff;
	zoomOffX = zoomOffOriginX - x;
	
	zoomInOriginY = y - yZoomOff;
	zoomInOriginX = x;
}

// Deactivate outside of view
instance_deactivate_all(true);
instance_activate_region(camera_get_view_x(camera)-8*8,camera_get_view_y(camera)-8*8,camera_get_view_x(camera)+camera_get_view_width(camera)+8*8,camera_get_view_y(camera)+camera_get_view_height(camera)+8*8,true);
instance_activate_object(obj_player);
instance_activate_object(obj_gui);
instance_activate_object(obj_stickynote);
instance_activate_object(obj_tilegui_control);
