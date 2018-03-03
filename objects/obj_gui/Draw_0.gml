/// @description 
if camera_get_view_width(view_camera[0]) > 385*8 {
	draw_sprite(spr_gui_new_base,0,obj_camera.xTemp - obj_camera.zoomOffX,obj_camera.yTemp - obj_camera.zoomOffY);
	draw_sprite(spr_scrollstart,0,887+obj_camera.xTemp - obj_camera.zoomOffX,2045+obj_camera.yTemp - obj_camera.zoomOffY);
	//draw_sprite(spr_gui_new_play,0,camera_get_view_x(obj_camera.camera)+49,camera_get_view_y(obj_camera.camera)+1784+(camera_get_view_height(obj_camera.camera)-2160));
	
	for (i = 1; i < (flagDragAlign-112)/10; i += 1) {
		//draw_sprite(spr_levellength,0,obj_camera.xTemp + i*10+112,obj_camera.yTemp+257);
	}
	
	//draw_sprite(spr_onionskin,onionIndex,obj_camera.xTemp+73,obj_camera.yTemp+249);
	draw_sprite_part(spr_scrollcover,0,flagDragAlign-848,0,2070,97,obj_camera.xTemp + 942 + flagDragAlign - 806-41 - obj_camera.zoomOffX,obj_camera.yTemp+2046 - obj_camera.zoomOffY);
	draw_sprite_part(spr_scrollline,0,flagDragAlign-848,0,2070,97,obj_camera.xTemp+926 + flagDragAlign - 806-41 - obj_camera.zoomOffX,obj_camera.yTemp+2080 - obj_camera.zoomOffY);
	draw_sprite(spr_scrollflag,0,obj_camera.xTemp + flagDragAlign - obj_camera.zoomOffX,obj_camera.yTemp+249*8+53 - obj_camera.zoomOffY);
}
