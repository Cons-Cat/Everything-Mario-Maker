if camera_get_view_width(view_camera[0]) > 385*8 {
	draw_sprite_ext(spriteVal,image_index,startx + obj_camera.xTemp + 9 - obj_camera.zoomOffX,starty + obj_camera.yTemp + jumpOffset + 8 - obj_camera.zoomOffY,8.3,8.3,rotation,c_white,1);
}
