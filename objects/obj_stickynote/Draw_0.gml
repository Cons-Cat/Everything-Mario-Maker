/// @description 
if camera_get_view_width(view_camera[0]) > 385*8 {
	draw_sprite_ext(spr_stickynote,0,startx + obj_camera.xTemp - obj_camera.zoomOffX,obj_camera.yTemp + 40 + 88 - obj_camera.zoomOffY,1,1,rotation,c_white,1);
}
