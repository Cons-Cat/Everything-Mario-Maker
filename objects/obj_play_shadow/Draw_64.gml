/// @description 
/*display_set_gui_size(480,270);

//if camera_get_view_width(view_camera[0]) > 385 {
	gpu_set_fog(true,c_black,0,0);
	draw_sprite_ext(spr_gui_play,1,5,225 + obj_gui.playHopY,image_xscale,image_yscale,0,c_white,0.5);
	draw_sprite_ext(spr_gui_play_bar,1,7,231 + obj_gui.playHopY,image_xscale,image_yscale,obj_gui.barAngle,c_white,0.5);
	//draw_sprite_part_ext(spr_gui_play_shadow, 0, 0, 0, 58, height, zoomCompX + 5, zoomCompY + 225,1,1,c_white,0.5);
	gpu_set_fog(false,c_black,0,0);
//}

if obj_gui.inEditor = 0 && obj_camera.view_w > 385 {
	draw_sprite_ext(spr_bottom_bar,0,0,(zoomCompY)/2.47 + 249,62 - barMin,1,0,c_white,1);
}
if obj_gui.inEditor = 1 {
	draw_sprite_ext(spr_bottom_bar,0,0,(zoomCompY)/3.55 + 248,62 - barMin,1,0,c_white,1);
}

/*display_set_gui_size(wSize,hSize)
draw_sprite_ext(spr_bottom_bar,0,0,248,62 - barMin,1,0,c_white,1);
display_set_gui_size(480,270);*/
