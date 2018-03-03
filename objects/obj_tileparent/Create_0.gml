script_execute(scr_cmove_init);

canHold = 0;
holding = 0;
held = 0;
holder = 0;
c_gravity = 0.26;
pounding = 0;
tempDragX = 0;
tempDragY = 0;
movingH = 0;
movingV = 0;
can_col = 1;
will_col = 1;

groupSelect = 0;
groupTarget = 0;

groupTargetX = x;
groupTargetY = y;
xFrom = x;
yFrom = y;

imageXscale = 8;
imageYscale = 8;

//Create shadow
with instance_create_layer(x,y,"Shadow",obj_shadow) {
	target = other.id;
}

//Scale up when created
createScale = 0.3;
createScaleCount = 2;
