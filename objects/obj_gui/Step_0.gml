///Level 1
if level = 0 {
	if !instance_exists(obj_gui_tile) {
        tile1 = ini_read_real("tiles", "tile1", 1);
        tile2 = ini_read_real("tiles", "tile2", 1);
        tile3 = ini_read_real("tiles", "tile3", 1);
        tile4 = ini_read_real("tiles", "tile4", 1);
        tile5 = ini_read_real("tiles", "tile5", 1);
        tile6 = ini_read_real("tiles", "tile6", 1);
        tile7 = ini_read_real("tiles", "tile7", 1);
        tile8 = ini_read_real("tiles", "tile8", 1);
        
        with instance_create_layer(86,11,"Elements",obj_gui_tile) {
            exVal = other.tile1-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 101.5*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = 0.6;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(118,11,"Elements",obj_gui_tile) {
            exVal = other.tile2-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 128*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = -0.5;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(150,11,"Elements",obj_gui_tile){
            exVal = other.tile3-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 154.2*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = 0.72;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(182,11,"Elements",obj_gui_tile){
            exVal = other.tile4-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 180.8*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = -0.8;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(281,11,"Elements",obj_gui_tile){
            exVal = other.tile5-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 298.5*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = 0.53;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(313,11,"Elements",obj_gui_tile){
            exVal = other.tile6-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 324.2*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = -0.56;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(345,11,"Elements",obj_gui_tile){
            exVal = other.tile7-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 349.5*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = 0.62;
				other.rotation = self.rotation;
			}
        }
        with instance_create_layer(377,11,"Elements",obj_gui_tile){
            exVal = other.tile8-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
            startx = 375.2*8;
			with instance_create_layer(0,0,"Elements",obj_stickynote) {
				startx = other.startx+8;
				rotation = -0.82;
				other.rotation = self.rotation;
			}
		}
	}
}
///Level 2
if level = 1{
    if !instance_exists(obj_gui_tile){
        
        tile9 = ini_read_real("tiles", "tile9", 1);
        tile10 = ini_read_real("tiles", "tile10", 1);
        tile11 = ini_read_real("tiles", "tile11", 1);
        tile12 = ini_read_real("tiles", "tile12", 1);
        tile13 = ini_read_real("tiles", "tile13", 1);
        tile14 = ini_read_real("tiles", "tile14", 1);
        tile15 = ini_read_real("tiles", "tile15", 1);
        tile16 = ini_read_real("tiles", "tile16", 1);
        
        if !instance_exists(obj_gui_tile){
            
	        with instance_create_layer(85,11,"Elements",obj_gui_tile){
	            exVal =  other.tile9-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(117,11,"Elements",obj_gui_tile){
	            exVal =  other.tile10-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(149,11,"Elements",obj_gui_tile){
	            exVal =  other.tile11-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(181,11,"Elements",obj_gui_tile){
	            exVal =  other.tile12-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(280,11,"Elements",obj_gui_tile){
	            exVal =  other.tile13-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(312,11,"Elements",obj_gui_tile){
	            exVal =  other.tile14-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(344,11,"Elements",obj_gui_tile){
	            exVal =  other.tile15-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
	        with instance_create_layer(376,11,"Elements",obj_gui_tile){
	            exVal =  other.tile16-1;
	            script_execute(scr_guitile,obj_tilegui_control.i[0]);
	        }
		}
    }
}
///Level 3
if level = 2{
    
    if !instance_exists(obj_gui_tile){
        
        tile17 = ini_read_real("tiles", "tile17", 1);
        tile18 = ini_read_real("tiles", "tile18", 1);
        tile19 = ini_read_real("tiles", "tile19", 1);
        tile20 = ini_read_real("tiles", "tile20", 1);
        tile21 = ini_read_real("tiles", "tile21", 1);
        tile22 = ini_read_real("tiles", "tile22", 1);
        tile23 = ini_read_real("tiles", "tile23", 1);
        tile24 = ini_read_real("tiles", "tile24", 1);
        
        with instance_create_layer(85,11,"Elements",obj_gui_tile){
            exVal =  other.tile17-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(117,11,"Elements",obj_gui_tile){
            exVal =  other.tile18-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(149,11,"Elements",obj_gui_tile){
            exVal =  other.tile19-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(181,11,"Elements",obj_gui_tile){
            exVal =  other.tile20-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(280,11,"Elements",obj_gui_tile){
            exVal =  other.tile21-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(312,11,"Elements",obj_gui_tile){
            exVal =  other.tile22-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(344,11,"Elements",obj_gui_tile){
            exVal =  other.tile23-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
        with instance_create_layer(376,11,"Elements",obj_gui_tile){
            exVal =  other.tile24-1;
            script_execute(scr_guitile,obj_tilegui_control.i[0]);
        }
    }
}

//Selecting Play/Edit button
if mouse_check_button_pressed(mb_left) {
	if mouse_x >= x11 && mouse_y >= x12 && mouse_x <= x13 && mouse_y <= x14 {
		barFlip = 1;
		inEditor = 0;
		obj_player.c_hspeed = 0;
		obj_player.c_vspeed = 0;
	}
	if mouse_x >= x21 && mouse_y >= x22 && mouse_x <= x23 && mouse_y <= x24 {
		inEditor = 1;
		obj_player.c_hspeed = 0;
		obj_player.c_vspeed = 0;
	}
}

x11 = camera_get_view_x(obj_camera.camera) + 5*8;
x12 = camera_get_view_y(obj_camera.camera) + 220*8;
x13 = camera_get_view_x(obj_camera.camera) + 60*8;
x14 = camera_get_view_y(obj_camera.camera) + 265*8;

x21 = camera_get_view_x(obj_camera.camera) + 4*8;
x22 = camera_get_view_y(obj_camera.camera) + 176*8;
x23 = camera_get_view_x(obj_camera.camera) + 48*8;
x24 = camera_get_view_y(obj_camera.camera) + 213*8;

//Play/Edit hotkey
if keyboard_check_pressed(vk_enter) && !keyboard_check(vk_alt) {
	if inEditor = 0 {
		inEditor = 1;
		obj_player.c_hspeed = 0;
		obj_player.c_vspeed = 0;
		
	} else {
		barFlip = 1;
		inEditor = 0;
		obj_player.c_hspeed = 0;
		obj_player.c_vspeed = 0;
	}
}

//usize = shader_get_uniform(shader,"size");//uniform for width, height, radius
//surf = surface_create(obj_camera.xTemp + 384,obj_camera.yTemp + 512)

//Play graphic animation
if barFlip = 1 {
	if playHop = 0 {
		playHop = 1;
		playHopSpd = playHopSpdDefault;
	}
	
	if barAngle < 48 {
		barAngle += barSpeed;
	} else {
		barAngle = 48;
		barFlip = 0;
	}
}
if barFlip = 0 {
	if barAngle > 0 + barSpeed {
		barAngle -= barSpeed;
		barSpeed += barSpeedAcel;
	} else {
		barAngle = 0;
		barSpeed = barSpeedDefault;
	}
}
if playHop = 1 {
	playHopY -= playHopSpd;
	
	if playHopY < -10 {
		playHopSpd -= playHopAcel;
	}
	if playHopY >= 0 + playHopSpd && playHopSpd < 0 {
		playHop = 0;
		playHopY = 0;
		playHopSpd = 0;
	}
}

//Moving goal
if mouse_x >= obj_camera.xTemp+flagDragAlign && mouse_y >= obj_camera.yTemp+249*8+53 && mouse_x <= obj_camera.xTemp+97+flagDragAlign && mouse_y <= obj_camera.yTemp+249*8+97+53 {
	if mouse_check_button_pressed(mb_left) {
		tempFlagDrag = mouse_x - flagDrag;
	}
}
if mouse_check_button(mb_left) {
	if tempFlagDrag != -1 {
		flagDrag = mouse_x - tempFlagDrag;
	}
} else {
	tempFlagDrag = -1;
}

if flagDrag < 133*8 {
	flagDrag = 133*8;
}
if flagDrag > 364*8 {
	flagDrag = 364*8;
}

flagDragAlign = floor(flagDrag/84)*84+49;

//Onion skin
if mouse_check_button_pressed(mb_left) {
	if mouse_x >= obj_camera.xTemp+73 && mouse_y >= obj_camera.yTemp+249 && mouse_x <= obj_camera.xTemp+72 && mouse_y <= obj_camera.yTemp+249+19 {
		if onionIndex = 0 {
			onionIndex = 1;
		} else {
			onionIndex = 0;
		}
	}
}

//Selection box
if keyboard_check(vk_shift) {
	if mouse_check_button_pressed(mb_left) {
		instance_create_layer(mouse_x,mouse_y,"Elements",obj_selection_control);
		//instance_create_layer(floor(mouse_x/16)*16,floor(mouse_y/16)*16,"Elements",obj_selection_control);
		with obj_tileparent {
			//Group deselecting
			groupSelect = 0;
			groupTarget = 0;
			groupTargetX = 0;
			groupTargetY = 0;
		}
	}
}


//GUI scaling
//if inEditor = 1 {
	guiWidth = inEditorWidth * obj_camera.guiZoom;
	guiHeight = inEditorHeight * obj_camera.guiZoom;
/*} else {
	guiWidth = inGameWidth;
	guiHeight = inGameHeight;
}*/

//Closing game
if keyboard_check_pressed(vk_escape) {
	game_end();
}

if shadowAlpha > shadowAlphaDefault {
	shadowAlpha = shadowAlphaDefault;
}
if shadowAlpha < 0 {
	shadowAlpha = 0;
}

//Window resizing
if (keyboard_check_pressed(vk_space)) {
	if !keyboard_check(vk_shift) {
		zoom += 0.25;
	} else {
		zoom -= 0.25;
	}
	
	if zoom > display_get_width()/3840 {
		zoom = 0.25;
	}
	if zoom < 0.25 {
		zoom = 1;
	}
	
	if zoom*3840 >= display_get_width() {
		window_set_fullscreen(true);
	} else {
		tempZoom = zoom;
		window_set_fullscreen(false);
		window_set_size(3840*zoom,2160*zoom);
	}
	
	alarm[0] = 1;
}
if keyboard_check_pressed(vk_enter) {
	if keyboard_check(vk_alt) {
		if window_get_fullscreen() = false {
			window_set_fullscreen(true);
			zoom = 1;
		} else {
			window_set_fullscreen(false);
			zoom = tempZoom;
		}
		
		window_set_size(3840*zoom,2160*zoom);
	}
}
