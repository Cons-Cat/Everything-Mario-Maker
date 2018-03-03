/// @description 
gpu_set_fog(true,c_black,0,0);
if instance_exists(target) {
	draw_sprite_ext(target.sprite_index,target.image_index,target.x + 24,target.y + 24,target.imageXscale*target.createScale,target.imageYscale*target.createScale,target.image_angle,c_white,0.5);
}
gpu_set_fog(false,c_black,0,0);
