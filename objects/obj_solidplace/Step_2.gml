//Account for skins
sprite_index = spr_smw_terrain;
spr = sprite_index;

//Account for image index
if held = 0 {
	if instance_exists(obj_selection_tile) {
		if obj_selection_tile.dragging = 0 {
			image_index = scr_auto_tile();
		}
	} else {
		image_index = scr_auto_tile();
	}
}

if instance_exists(obj_gui) {
    if obj_gui.inEditor = 0 {
        gone = 1;
    } else {
        gone = 0;
    }
}

event_inherited();
