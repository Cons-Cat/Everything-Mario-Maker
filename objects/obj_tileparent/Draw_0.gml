/// @description 
if held = 1 {
	draw_sprite_ext(spr_orange,0,floor((x - tempDragX)/128)*128,floor((y - tempDragY)/128)*128,8,8,0,c_white,0.67);
	if sprite_height >= 32*8 {
		draw_sprite_ext(spr_orange,0,floor((x - tempDragX)/128)*128,floor((y - tempDragY)/128)*128-128,8,8,0,c_white,0.67);
	}
}

draw_sprite_ext(sprite_index,image_index,x,y,createScale*imageXscale,createScale*imageYscale,image_angle,c_white,image_alpha);
