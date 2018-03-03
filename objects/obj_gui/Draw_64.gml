/// @description 
if obj_camera.zoom_level = 1 {
	//draw_sprite(spr_gui,0,0,0);
}

//display_set_gui_size(guiWidth,guiHeight)
//display_set_gui_maximize(1,1,0,0);

//display_set_gui_size(camera_get_view_width(obj_camera.camera),camera_get_view_height(obj_camera.camera));

//draw_sprite(spr_gui_new_base,0,(3840 - (3840/obj_camera.zoom_level))/2.5,(2160 - (2160/obj_camera.zoom_level))/2.5 - obj_camera.yZoomOff * 8);

//Draw play button

//gpu_set_fog(true,c_black,0,0);
//draw_sprite_part_ext(spr_gui_play_shadow, 0, 0, 0+obj_play_shadow.height + playHopY,58,45, 3, 224+obj_play_shadow.height, image_xscale,image_yscale,c_white,0.5);
//gpu_set_fog(false,c_black,0,0);

//display_set_gui_size(3840,2160);
display_set_gui_size(3840,2160);
draw_sprite_ext(spr_gui_new_play_bar,obj_gui.inEditor,49,1780 + playHopY,1,1,barAngle,c_white,1);
draw_sprite(spr_gui_new_play,obj_gui.inEditor,49,1780 + playHopY);

/*draw_text(100,100,obj_camera.zoom_level);
draw_text(100,120,(3840 - (3840/obj_camera.zoom_level))/2.5);
draw_text(100,140,(2160 - (2160/obj_camera.zoom_level))/2.5);*/
