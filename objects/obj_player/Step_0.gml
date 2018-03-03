//Determining physics values
if editing = 1 {
    phy_acceleration_imp = phy_acceleration_editor;
    phy_deceleration_imp = phy_deceleration_editor;
    max_speed = phy_editorspeed;
} else {
	xscaleFix = 1;
    phy_acceleration_imp = phy_acceleration;
    phy_deceleration_imp = phy_deceleration;
}

//Movement
if pounding = 0 && held = 0 {
	if keyboard_check(_left) && not keyboard_check(_right) {
		if !collision_rectangle(x-9,y-15,x-8,y+7,obj_solid_parent,false,false) || obj_gui.inEditor = 1 {
			c_hspeed = max(c_hspeed-phy_acceleration_imp,-max_speed);
			movingH = 1;
			imageXscale = -8;
			
			if c_vspeed = 0 {
				if c_hspeed > 0 {
					sprite_index = spr_mario_skid_big;
				} else {
					sprite_index = spr_mario_walk_big;
				}
			} else {
				sprite_index = spr_mario_jump_big;
			}
		}
	}
	
	if keyboard_check(_right ) {
		if !collision_rectangle(x+9,y-15,x+8,y+7,obj_solid_parent,false,false) || obj_gui.inEditor = 1 {
			c_hspeed = min(c_hspeed+phy_acceleration_imp,max_speed);
			movingH = 1;
			imageXscale = 8;
		
			if c_vspeed = 0 {
				if c_hspeed < 0 {
					sprite_index = spr_mario_skid_big;
				} else {
					sprite_index = spr_mario_walk_big;
				}
			}
		}
	}

	if editing = 1 {
		if keyboard_check(_up) && not keyboard_check(_down) {
			c_vspeed = max(c_vspeed-phy_acceleration_imp,-max_speed);
			movingV = 1;
		}
		if keyboard_check(_down) {
			c_vspeed = min(c_vspeed+phy_acceleration_imp,max_speed);
			movingV = 1;
		}
	}
	
	if c_hspeed != 0 {
		image_speed = (c_hspeed/3)/8;
	}
	
	if c_vspeed = 0 {
		if c_hspeed = 0 {
			sprite_index = spr_mario_still_big;
			image_index = 0;
			image_speed = 0;
		}
	} else {
		if c_vspeed <= 0 {
			sprite_index = spr_mario_jump_big;
		}
		if c_vspeed > 0 {
			sprite_index = spr_mario_fall_big;
		}
		image_index = 0;
		image_speed = 0;
	}
	
	if editing = 0 {
		xTemp = imageXscale;
	}
	if editing = 1 {
		sprite_index = spr_mario_still_big;
		image_index = 2;
		image_speed = 0;
		imageXscale = xTemp;
	}
}

//Stopping
if (!keyboard_check(_left) && !keyboard_check(_right)) {
	movingH = 0;
}
if (!keyboard_check(_up) && !keyboard_check(_down)) {
	movingV = 0;
}
/*&& abs(c_hspeed) > 0
 {
 //Deceleration in the air
 if in_air
  {
  if c_hspeed < 0
  c_hspeed = min(c_hspeed+phy_deceleration_air,0);
  if c_hspeed > 0
  c_hspeed = max(c_hspeed-phy_deceleration_air,0);
  }
 
 //Deceleration on the ground
 else
  {
  if c_hspeed < 0
  c_hspeed = min(c_hspeed+phy_deceleration_imp,0);
  if c_hspeed > 0
  c_hspeed = max(c_hspeed-phy_deceleration_imp,0);
  }
}

if (not keyboard_check(_up) && not keyboard_check(_down))
&& abs(c_vspeed) > 0 {
	if editing = 1 {
		if c_vspeed < 0 {
			c_vspeed = min(c_vspeed+phy_deceleration_imp,0);
			if c_vspeed > 0 {
				c_vspeed = max(c_vspeed-phy_deceleration_imp,0);
			}
		}
	}
}*/

//Jumping
if editing = 0 {
	if keyboard_check_pressed(_jump)
	&& not in_air {
		jumping = 1;
		c_vspeed = -phy_jumpheight;
	}
}

//Variable Jump
if not keyboard_check(_jump)
&& c_vspeed < 0
&& jumping {
	c_vspeed += 0.55 * 8;
}

//Reset Jumping Flag
if c_vspeed >= 0 {
	jumping = 0;
}

//Ground Pounding
/*if pounding = 0{
    if in_air{ //Activate ground pound
        if keyboard_check_pressed(_down){
            if holdingItem = 0{
                pounding = 1;
            }
        }
    }
    groundPoundSpd = groundPoundSpdBase;
    groundPoundRaise = 0;
    poundAngle = 0;
    poundCanCancel = 0;
}
if pounding = 1{ //Play ground pound animation
    if poundRotateAlarm = 0{
        poundRotateAlarm = 1;
        poundCounter += 1;
        alarm[0] = groundPoundSpd;
    }
    if poundCounter = 8{
        pounding = 2;
    }
    c_vspeed = 0;
    
    if c_hspeed != 0{
        c_hspeed /= 1.2;
    }
}
if pounding = 2{
    pounding = 3;
    c_vspeed = 0;
    alarm[1] = 13;
}
if pounding = 3{
    c_hspeed = 0;
    c_vspeed = 0;
}
if pounding = 4{ //Slam down
    c_vspeed = 6;
    c_hspeed = 0;
    
    if poundCanCancel = 0{
        poundCanCancel = 1;
        alarm[2] = 5;
    }
    
    if keyboard_check_pressed(_up){ //Cancel ground pound
        if poundCanCancel = 2{
            pounding = 0;
            poundCounter = 0;
            poundAngle = 0;
        }
    }
}*/

//Running
if editing = 0 {
	if keyboard_check(_run) {
		max_speed = phy_runspeed;
	} else {
		max_speed = phy_walkspeed;
	}
} else {
	max_speed = phy_walkspeed;
}

//Lowers the player's speed if it is exceeding the current max
if abs(c_hspeed) > max_speed {
	c_hspeed -= .1*sign(c_hspeed);
}

//Direction
if editing = 0 {
	if c_hspeed != 0 {
		dir1 = sign(c_hspeed);
	}
}

//Vertical Speed Cap
c_vspeed = min(c_vspeed,6*8);

if obj_gui.inEditor = 0 {
	if y < -128 {
		y = -128;
	}
	if y > room_height {
		y = room_height;
	}
}
if obj_gui.inEditor = 1 {
	if y < 360 {
		y = 360;
	}
	if y > room_height {
		y = room_height;
	}
}

//Grabbing items
/*if keyboard_check(_run) {
    if dir1 >= 0 {
        with collision_rectangle(x,y-8,x+8,y+8,obj_superparent,false,false) {
            if canHold = 1{
                holding = 1;
                holder = other.id;
                other.holdingItem = id;
            }
        }
    }
    if dir1 < 0 {
        with collision_rectangle(x,y-8,x-8,y+8,obj_superparent,false,false) {
            if canHold = 1 {
                holding = 1;
                holder = other.id;
                other.holdingItem = id;
            }
        }
    }
} else { //Throwing items
    if self.holdingItem != 0 {
        holdingItem.dir1 = self.dir1;
        
        if keyboard_check(global.p1_up) {
            holdingItem.c_vspeed = -6-self.c_vspeed;
            holdingItem.kicked = 0;
        }
        if (c_hspeed != 0) || (c_hspeed = 0 && !keyboard_check(global.p1_up)) {
            holdingItem.c_hspeed = self.dir1*2+self.c_hspeed;
        }
        
        holdingItem.holding = 0;
        holdingItem.holder = 0;
        holdingItem = 0;
    }
}*/

event_inherited();
