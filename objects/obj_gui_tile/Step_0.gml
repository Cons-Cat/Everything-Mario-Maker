//Moving with view
x = startx + camera_get_view_x(obj_camera.camera);
y = starty + camera_get_view_y(obj_camera.camera) + jumpVspeed;

//Getting the sprite
if obj_gui.inEditor = 1 {
    if instance = obj_solidplace {
        sprite_index = spr_smw_terrain_icon;
    }
    if instance = obj_mushroom {
        sprite_index = spr_smw_mushroom;
    }
    
    spriteVal = sprite_index;
} else {
	select = 0;
}

//Compensating for sprite offsets
if obj_gui.inEditor = 1 {
    if gone = 0 {
        if instance = obj_solidplace {
            offsetX = 0;
            yFloor = 0;
            altDrag = 0;
        }
        if instance = obj_mushroom {
            offsetX = 0;
            yFloor = 0;
            altDrag = 1;
        }
    }
    
    gone = 1;
}

//Hopping when selected
if select = 1 {
    if obj_gui.inEditor = 1 {
        if agg = 0 {
            agg = 1;
			
            if jump = 0 {
                jumpVspeed = -2.8*8;
            }
        }
		
        if jumpVspeed >= 0 {
            if jumpGone = 0 {
                jump += 1;
                jumpGone = 1;
            }
        }
    }
}

jumpOffset += jumpVspeed; // Velocity
if jumpOffset < 0 {
	jumpVspeed += 0.38*8; // Gravity
}

///Hop again
if select = 0 {
    jump = 0;
    jumpGone = 0;
    went = 0;
    agg = 0;
}

//Selecting
if mouse_x >= self.x - 64 + offsetX && mouse_x < self.x + 64 + offsetX && mouse_y >= self.y - 64 + offsetY && mouse_y < self.y + 64 + offsetY {
    if mouse_check_button_pressed(mb_left) {
		if select = 0 {
	        obj_gui_tile.select = 0;
	        select = 1;
		} else {
	        select = 0;
		}
    }
}

//Placing
if select = 1 && !instance_exists(obj_selection_control) && obj_gui.instanceSelected = 0 {
	if !keyboard_check(vk_shift) {
		if obj_gui.instanceSelected = 0 {
			if (mouse_check_button_pressed(mb_left) && (mouse_x > camera_get_view_x(obj_camera.camera) + 48*8 && mouse_x < camera_get_view_x(obj_camera.camera) + 432*8) ){
				insideBorder = 2;
			}
			if (mouse_check_button(mb_left) && insideBorder = 1) {
				insideBorder = 1;
			}
	
			if mouse_check_button(mb_left) && insideBorder = 2 {
			    if mouse_y > camera_get_view_y(obj_camera.camera) + 32*8 && mouse_y < camera_get_view_y(obj_camera.camera) + 246*8 {
			        if altDrag = 0 {
			            if !collision_point(mouse_x,mouse_y,obj_superparent,false,false) {
			                with instance_create_layer(mouse_x,mouse_y,"Instances",instance) {
			                    held = 0;
								dim = obj_gui.dim;
								
			                    x = floor(x/128)*128+64;
			                    y = floor(y/128)*128+64;
			                }
			            }
			        } else {
			            if holding = 0 {
			                if !collision_point(mouse_x-64,mouse_y-64,obj_superparent,false,false) {
								with instance_create_layer(mouse_x-64,mouse_y-64,"Instances",instance) {
			                        held = 0;
									dim = obj_gui.dim;
			                    }
                        
			                    holding = 1;
			                }
			            }
			        }
			    }
			}
		}
		if mouse_check_button_released(mb_left) {
			holding = 0;
			insideBorder = 0;
			obj_gui.instanceSelected = 0;
		}
	}
}
