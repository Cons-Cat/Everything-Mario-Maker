//The tile to be spawned
instance = obj_mushroom;
spriteVal = spr_collision_mask;
sprite_index = spr_inv;

pageFold = 0;
starty = 16.4*8;
rotation = 0;
ax = 0;
ay = 0;

jumpVspeed = 0;
jumpOffset = jumpVspeed;

playVar = 0;

select = 0;
selSTOP = 0;
depth = -100;
gone = 0;
offsetX = 0;
offsetY = 0;

//The lowest the y will ever get when hoppinh
yFloor = y;

//Hopping state
jump = 0;

jumpGone = 0;
agg = 0;
went = 0;
canPlace = 0;
notSelect = 0;

//Enemy/Item dragging
altDrag = 0;
sick = 0;
insideBorder = 0;
