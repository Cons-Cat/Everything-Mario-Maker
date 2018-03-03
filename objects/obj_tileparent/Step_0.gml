//Being dragged around the editor
if obj_gui.inEditor = 1 {
	if groupTarget = 0 {
	    if held = 1 {
			x = mouse_x - tempDragX;
	        y = mouse_y - tempDragY;
        
			//Placing
	        if mouse_check_button_released(mb_left) {
	            held = 0;
				x = floor((x - tempDragX)/128)*128 + 64;
		        y = floor((y - tempDragY)/128)*128 + 64 + altOffset;
			}
		}
		
		//Selecting
		if mouse_x >= self.x - selectBoundWidth/2 && mouse_x < self.x+selectBoundWidth/2 && mouse_y >= self.y - selectBoundHeight/2 && mouse_y < self.y + selectBoundHeight/2 {
			if (mouse_x < obj_gui.x21) || (mouse_x > obj_gui.x23) || (mouse_y < obj_gui.x22) || (mouse_y > obj_gui.x24) {
				if obj_gui.instanceSelected = 0 && !keyboard_check(vk_shift) {
					if mouse_check_button_pressed(mb_left) {
						if groupSelect = 0 {
					        held = 1;
							tempDragX = mouse_x - x;
							tempDragY = mouse_y - y;
							obj_gui.instanceSelected = 1;
							
							if object_index != obj_player {
								layer = layer_get_id("Selected");
							}
							depth = -10000;
						}
				    }
				}
			}
		}
		
		if !mouse_check_button(mb_left) {
			tempDragX = 0;
			tempDragY = 0;
			obj_gui.instanceSelected = 0;
			
			if object_index != obj_player {
				layer = layer_get_id("Instances");
				depth = 0;
			}
		
			if collision_point(floor((x - tempDragX)/128)*128 + 64,floor((y - tempDragY)/128)*128 + 64,obj_tileparent,false,true) {
				if object_index != obj_player.object_index {
					if !instance_exists(obj_selection_control) {
						x = xFrom;
						y = yFrom;
					}
				}
			} else {
				xFrom = floor((x - tempDragX)/128)*128 + 64;
				yFrom = floor((y - tempDragY)/128)*128 + 64;
			}
		}
	}
	
	//Group selecting
	if instance_exists(obj_selection_control) {
		if !mouse_check_button(mb_left) {
			//Bottom right
			if self.x >= obj_selection_control.x && self.x <= mouse_x && self.y >= obj_selection_control.y && self.y <= mouse_y && obj_selection_tile.dir = "br" {
				groupSelect = 1;
			}
			//Bottom left
			if self.x >= mouse_x && self.x <= obj_selection_control.x && self.y >= obj_selection_control.y && self.y <= mouse_y && obj_selection_tile.dir = "bl" {
				groupSelect = 1;
			}
			//Top right
			if self.x >= obj_selection_control.x && self.x <= mouse_x && self.y >= mouse_y && self.y <= obj_selection_control.y && obj_selection_tile.dir = "tr" {
				groupSelect = 1;
			}
			//Top left
			if self.x >= mouse_x && self.x <= obj_selection_control.x && self.y <= obj_selection_control.y && self.y >= mouse_y && obj_selection_tile.dir = "tl" {
				groupSelect = 1;
			}
		}
		
		if position_meeting(x,y,obj_selection_tile) {
			if instance_place(x,y,obj_selection_tile).created = 0 {
				if groupSelect = 1 {
					alarm[0] = 2;
					
					groupTargetX = self.x - obj_selection_tile.x + 8;
					groupTargetY = self.y - obj_selection_tile.y + 8;
					groupTarget = 1;
				}
			}
		}
	} else {
		//Group deselecting
		groupSelect = 0;
		groupTarget = 0;
		groupTargetX = 0;
		groupTargetY = 0;
	}
} else {
	//Deselect when Playing
	held = 0;
}

if obj_gui.inEditor = 0 {
	if holding = 1 {
        if holder != 0 {
            if holder.dir1 = 1 {
                //x = holder.x+6;
            }
            if holder.dir1 = -1 {
                //x = holder.x-6;
            }
            y = holder.y+4;
            
            //depth = -10;
            image_xscale = holder.dir1;
        }
    } else {
        //depth = -4;
    }
} else {
	layer = layer_get_id("Instances");
	depth = 0;
	
    /*holding = 0;
    depth = -4;
    /*if collision_rectangle(x,y,x+16,y+sprite_width,obj_solid_parent,false,false){
        if c_hspeed != 0{
            c_hspeed /= 1.15;
        }
    }*/
}

//Stopping
if abs(c_hspeed) != 0 {
    //Deceleration in the air
    if in_air {
		if movingV = 0 {
	        if c_hspeed < 0 {
	            c_hspeed = min(c_hspeed+phy_deceleration_air,0);
	        }
	        if c_hspeed > 0{
	            c_hspeed = max(c_hspeed-phy_deceleration_air,0);
	        }
		}
    } else {
		if movingH = 0 {
	        //Deceleration on the ground
	        if c_hspeed < 0 {
	            c_hspeed = min(c_hspeed+phy_deceleration,0);
	        }
	        if c_hspeed > 0 {
	            c_hspeed = max(c_hspeed-phy_deceleration,0);
	        }
		}
    }
}
if abs(c_vspeed) != 0
&& (not keyboard_check(_up) && not keyboard_check(_down)) {
	if editing = 1 {
		//Upwards momentum deceleration
		if c_vspeed < 0 {
			c_vspeed = min(c_vspeed+phy_deceleration_imp,0);
		}
		//Downwards momentum deceleration
		if c_vspeed > 0 {
			c_vspeed = max(c_vspeed-phy_deceleration_imp,0);
		}
	}
}

//Colliding with other enemies or items
/*if obj_gui.inEditor = 0{
	if item > 0 || enemy = 1 {
	    if (dead != 2) || (dead = 2 && kicked = 0){
	        with collision_rectangle(bbox_left,bbox_top,bbox_left+1,bbox_bottom,obj_superparent,false,true){
	            if enemy != 0 || item > 0{
	                other.dir = 1;
	                if (dead != 2) || (dead = 2 && kicked = 0){
	                    dir = -1;
	                }
	            }
	        }
	        with collision_rectangle(bbox_right,bbox_top,bbox_right+1,bbox_bottom,obj_superparent,false,true){
	            if enemy != 0 || item > 0{
	                other.dir = -1;
	                if (dead != 2) || (dead = 2 && kicked = 0){
	                    dir = 1;
	                }
	            }
	        }
	    }
	}
}*/

if holding = 0{
//    script_execute(scr_cmove_step,1,0);
}

//Deleting
if obj_gui.inEditor = 1 {
	if object_index != obj_player.object_index {
		if mouse_check_button(mb_right) {
			if mouse_x > self.x - 64 && mouse_x < self.x + sprite_width - 64 {
				if mouse_y > self.y - 64 && mouse_y < self.y + sprite_height - 64 {
					//instance_destroy();
					createScaleCount = -1;
				}
			}
		}
	}
}

if createScaleCount > 0 {
	if createScale < 0.8 {
		createScale += 0.2;
	} else {
		createScale = 1.05;
		createScaleCount -= 1;
	}
} else if createScaleCount = 0 {
	createScale = 1;
} else if createScaleCount = -1 {
	if createScale > 0 {
		createScale -= 0.28;
	} else {
		instance_destroy();
	}
}

//Custom Movement System (Goes Last)
if obj_gui.inEditor = 0 {
	//Argument decides whether or not to evaluate collision
	scr_cmove_step(1,0);
} else {
	//scr_editor_player();
	scr_cmove_step(0,1);
}

image_xscale = imageXscale;
image_yscale = imageYscale;
