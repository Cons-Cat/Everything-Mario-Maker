/// @description 
/*if mirror = 0 && flip = 0 {
	for (i = 0; i < image_xscale; i += 1) {
		for (j = 0; j < image_yscale; j += 1) {
			if i = 0 && j = 0 {
				if image_xscale >= 1 && image_yscale >= 1 {
					index = 0;
				}
				if image_xscale > 1 && image_yscale = 1 {
					index = 12;
				}
				if image_xscale = 1 && image_yscale > 1 {
					index = 3;
				}
				if image_xscale = 1 && image_yscale = 1 {
					index = 15;
				}
			}
			else if i < image_xscale-1 && j = 0 {
				if image_yscale > 1 {
					index = 1;
				} else {
					index = 13;
				}
			}
			else if i = image_xscale-1 && j = 0 {
				if image_yscale > 1 {
					index = 2;
				} else {
					index = 14;
				}
			}
			else if i = 0 && j < image_yscale-1 {
				if image_xscale = 1 {
					index = 7;
				}
				if image_xscale > 1 {
					index = 4;
				}
			}
			else if i < image_xscale-1 && j < image_yscale-1 {
				index = 5;
			}
			else if i = image_xscale-1 && j < image_yscale-1 {
				index = 6;
			}
			else if i = 0 && j = image_yscale-1 {
				if image_xscale = 1 {
					index = 11;
				}
				if image_xscale > 1 {
					index = 8;
				}
			}
			else if i < image_xscale-1 && j = image_yscale-1 {
				index = 9;
			}
			else if i = image_xscale-1 && j = image_yscale-1 {
				index = 10;
			}
			
			draw_sprite(sprite_index, index, x + i*16, y + j*16);
		}
	}
}

if mirror = 16 && flip = 0 {
	for (i = -1; i > image_xscale; i -= 1) {
		for (j = 0; j < image_yscale; j += 1) {
			
			if i = image_xscale && j = 0 {
				index = 0;
			}
			
			draw_sprite(sprite_index,index,x + i*16,y + j*16);
			draw_text(x+i*16,y+j*16,index);
		}
	}
}

if mirror = 0 && flip = 16 {
	for (i = 0; i <= image_xscale; i += 1) {
		for (j = -1; j >= image_yscale; j -= 1) {
			draw_sprite(sprite_index,index,x + i*16,y + j*16);
		}
	}
}

if mirror = 16 && flip = 16 {
	for (i = -1; i >= image_xscale; i -= 1) {
		for (j = -1; j >= image_yscale; j -= 1) {
			draw_sprite(sprite_index,index,x + i*16,y + j*16);
		}
	}
}

if i = 0 && j = 0 {
	index = 0;
}
if i < image_xscale && i > 0 {
	index = 1;
}
if i = image_xscale && j = 0 {
	index = 2;
}*/

// Center
draw_sprite_ext(spr_selection_center,0,xstart+4,ystart+4,mouse_x-xstart-4,mouse_y-ystart-4,0,c_white,1);

// Sides
if mouse_x < xstart {
	draw_sprite_ext(spr_selection_r, 0, xstart, ystart + 4, 1, mouse_y - ystart - 4, 0, c_white, 1);
	draw_sprite_ext(spr_selection_l, 0, mouse_x, ystart + 4, 1, mouse_y - ystart - 4, 0, c_white, 1);
}
if mouse_x >= xstart {
	draw_sprite_ext(spr_selection_l, 0, xstart, ystart + 4, 1, mouse_y - ystart - 4, 0, c_white, 1);
	draw_sprite_ext(spr_selection_r, 0, mouse_x, ystart + 4, 1, mouse_y - ystart - 4, 0, c_white, 1);
}
if mouse_y < ystart {
	draw_sprite_ext(spr_selection_b, 0, xstart + 4, ystart, mouse_x - xstart - 4, 1, 0, c_white, 1);
	draw_sprite_ext(spr_selection_t, 0, xstart + 4, mouse_y, mouse_x - xstart - 4, 1, 0, c_white, 1);
}
if mouse_y >= ystart {
	draw_sprite_ext(spr_selection_t, 0, xstart + 4, ystart, mouse_x - xstart - 4, 1, 0, c_white, 1);
	draw_sprite_ext(spr_selection_b, 0, xstart + 4, mouse_y, mouse_x - xstart - 4, 1, 0, c_white, 1);
}

// Up left
if mouse_x < xstart && mouse_y < ystart {
	draw_sprite(spr_selection_br,0,xstart,ystart);
	draw_sprite(spr_selection_bl,0,mouse_x,ystart);
	draw_sprite(spr_selection_tr,0,xstart,mouse_y);
	draw_sprite(spr_selection_tl,0,mouse_x,mouse_y);
}
// Up right
if mouse_x >= xstart && mouse_y < ystart {
	draw_sprite(spr_selection_bl,0,xstart,ystart);
	draw_sprite(spr_selection_br,0,mouse_x,ystart);
	draw_sprite(spr_selection_tl,0,xstart,mouse_y);
	draw_sprite(spr_selection_tr,0,mouse_x,mouse_y);
}
// Bottom right
if mouse_x >= xstart && mouse_y >= ystart {
	draw_sprite(spr_selection_tl,0,xstart,ystart);
	draw_sprite(spr_selection_tr,0,mouse_x,ystart);
	draw_sprite(spr_selection_bl,0,xstart,mouse_y);
	draw_sprite(spr_selection_br,0,mouse_x,mouse_y);
}
// Bottom left
if mouse_x < xstart && mouse_y >= ystart {
	draw_sprite(spr_selection_tr,0,xstart,ystart);
	draw_sprite(spr_selection_tl,0,mouse_x,ystart);
	draw_sprite(spr_selection_br,0,xstart,mouse_y);
	draw_sprite(spr_selection_bl,0,mouse_x,mouse_y);
}
