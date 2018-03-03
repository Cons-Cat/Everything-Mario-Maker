/// @description 
if !instance_exists(obj_selection_control) {
	instance_destroy();
}

if obj_selection_control.gone = 1 {
	// Never cover an area wider than the mouse's box
	if dir = "br" {
		if x > mouse_x {
			instance_destroy();
		}
		if y > mouse_y {
			instance_destroy();
		}
	}
	if dir = "bl" {
		if x < mouse_x {
			instance_destroy();
		}
		if y > mouse_y {
			instance_destroy();
		}
	}
	if dir = "tr" {
		if x > mouse_x {
			instance_destroy();
		}
		if y < mouse_y {
			instance_destroy();
		}
	}
	if dir = "tl" {
		if x < mouse_x {
			instance_destroy();
		}
		if y < mouse_y {
			instance_destroy();
		}
	}
} else {
	// Select box
	if mouse_x >= self.x && mouse_y >= self.y && mouse_x < self.x+16 && mouse_y < self.y+16 {
		if mouse_check_button_pressed(mb_left) {
			//if i != 0 && j != 0 {
				obj_selection_control.center = self.id;
			//}
			with obj_selection_tile {
				center = obj_selection_control.center;
				offsetX = center.x - x;
				offsetY = center.y - y;
				obj_selection_control.offsetX = center.x - x;
				obj_selection_control.offsetY = center.y - y;
			}
			
			self.held = 1;
		}
	}
	if obj_selection_control.center != 0 {
		if held = 1 {
			dragging = 1;
			x = mouse_x;
			y = mouse_y;
		
			if mouse_check_button_released(mb_left) {
				x = floor(x/16)*16;
				y = floor(y/16)*16;
				held = 0;
			}
		} else {
			dragging = 1;
			x = center.x - offsetX;
			y = center.y - offsetY;
		}
	}
}

if mouse_check_button(mb_left) {
	with obj_tileparent {
		if groupTarget != 0 {
			if obj_selection_control.gone = 0 {
				x = obj_selection_control.x + groupTargetX - 8;
				y = obj_selection_control.y + groupTargetY - 8;
			}
		}
	}
}
if mouse_check_button_released(mb_left) {
	dragging = 0;
	created = 1;
	if i != 0 && j != 0 {
		visible = true;
	}
			//visible = true; //Delete
	
	with (obj_tileparent) {
		if groupTarget != 0 {
			x = floor((obj_selection_tile.x + groupTargetX)/16)*16 - 8;
			y = floor((obj_selection_tile.y + groupTargetY)/16)*16 - 8;
		}
	}
}

if x = obj_selection_control.x {
	place = 0;
}
