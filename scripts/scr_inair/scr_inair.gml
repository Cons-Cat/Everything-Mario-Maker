var c_solid = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solid_parent,0,0);
 
var cjt = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_jumpthrough,0,0);

var c_slope = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+3,obj_solid_parent,1,0);

/*-------------------------------*/

//Solid check
if c_solid && c_solid.can_col = 1 {
	return false;
} else if (cjt) && (add_y = 0) { //else if ((cjt) || (c_slope)) && (add_y == 0)
	//Jumpthrough check
	return false;
} else if (c_slope) && (add_y = 0) {
	//Slope check
	return false;
} else {
	//No collision
	return true;
}
