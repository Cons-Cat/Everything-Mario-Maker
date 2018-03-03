/// @description 
if !mouse_check_button(mb_left) {
	gone = 0;
	x = obj_selection_tile.x;
	y = obj_selection_tile.y;
	visible = false;
	
	with obj_selection_tile {
		if !instance_place(x,y,obj_tileparent) {
			if i != 0 || j != 0 {
				instance_destroy();
			}
		}
	}
}

if mouse_check_button(mb_left) {
	if gone = 0 {
		if instance_exists(obj_selection_tile) {
			/*if obj_selection_tile.dir = "tl" {
				x = xstart;
				y = ystart;
			}
			if obj_selection_tile.dir = "bl" {
				x = xstart;
				y = mouse_y;
			}
			if obj_selection_tile.dir = "tr" {
				x = mouse_x;
				y = ystart;
			}
			if obj_selection_tile.dir = "br" {
				x = mouse_x;
				y = mouse_y;
			}*/
			x = obj_selection_tile.x;
			y = obj_selection_tile.y;
		}
	}
}
if mouse_check_button_pressed(mb_left) {
	if !instance_place(mouse_x,mouse_y,obj_selection_tile) {
		with obj_selection_tile {
			instance_destroy();
		}
		alarm[0] = 2;
	}
}

if gone = 1 {
	//Bottom Right
	if mouse_x >= self.x && mouse_y >= self.y {
		for (i = 0; i < mouse_x-iterateXStart; i += 16) {
			for (j = 0; j < mouse_y-iterateYStart; j += 16) {
				if !collision_point(iterateXStart+i,iterateYStart+j,obj_selection_tile,false,false) {
					with instance_create_layer(iterateXStart+i,iterateYStart+j,"Elements",obj_selection_tile) {
						i = other.i;
						j = other.j;
						dir = "br";
					}
				}
			}
		}
	}
	//Bottom Left
	if mouse_x <= self.x && mouse_y >= self.y {
		for (i = 0; i < iterateXStart-mouse_x; i += 16) {
			for (j = 0; j < mouse_y-iterateYStart; j += 16) {
				if !collision_point(iterateXStart-i,iterateYStart+j,obj_selection_tile,false,false) {
					with instance_create_layer(iterateXStart-i,iterateYStart+j,"Elements",obj_selection_tile) {
						i = other.i;
						j = other.j;
						dir = "bl";
					}
				}
			}
		}
	}
	//Top Right
	if mouse_x >= self.x && mouse_y <= self.y {
		for (i = 0; i < mouse_x-iterateXStart; i += 16) {
			for (j = 0; j < iterateYStart-mouse_y; j += 16) {
				if !collision_point(iterateXStart+i,iterateYStart-j,obj_selection_tile,false,false) {
					with instance_create_layer(iterateXStart+i,iterateYStart-j,"Elements",obj_selection_tile) {
						i = other.i;
						j = other.j;
						dir = "tr";
					}
				}
			}
		}
	}
	//Top Left
	if mouse_x <= self.x && mouse_y <= self.y {
		for (i = 0; i < iterateXStart-mouse_x; i += 16) {
			for (j = 0; j < iterateYStart-mouse_y; j += 16) {
				if !collision_point(iterateXStart-i,iterateYStart-j,obj_selection_tile,false,false) {
					with instance_create_layer(iterateXStart-i,iterateYStart-j,"Elements",obj_selection_tile) {
						i = other.i;
						j = other.j;
						dir = "tl";
					}
				}
			}
		}
	}
}
