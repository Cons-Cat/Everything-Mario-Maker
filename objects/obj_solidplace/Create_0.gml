event_inherited();

image_speed = 0;
visible = false;
alarm[11] = 2;

tile = 0;
gone = 0;
item = 0;
amiibo = 0;
hit = 0;
select = 0;
col = make_color_rgb(247,205,57);
released = 1;
releaseTime = 0;
dimensionProper = 1;
canHold = 0;
holding = 0;
holder = 0;
c_gravity = 0;
enemy = 0;
item = 0;
dir = 0;
dead = 0;
will_col = 0;
can_col = 1;
altOffset = 0;
//dim = obj_gui.dim;

selectBoundWidth = 128;
selectBoundHeight = 128;

//Avoid layered pieces
if collision_point(x,y,obj_solidplace,false,true) {
    if collision_point(x,y,obj_solidplace,false,true).dim = obj_gui.dim {
//        instance_destroy();
    }
}

with instance_create_layer(x,y,"Elements",obj_tilePlaceholder) {
	targetPlace = other.id;
}

//Keep the blocks inside the border
/*if y >= 592 || y <= 32 {
    instance_destroy();
}*/

//Spawn scenary
/*chance = random(8);
if chance >= 8{
    if collision_point(x+24,y+8,obj_solidplace_new,false,true){
        instance_create(x,y-16,obj_scen_bush);
    }
} else if chance >= 7{
    if collision_point(x-24,y+8,obj_solidplace_new,false,true){
        instance_create(x-16,y-16,obj_scen_bush);
    }
} else if chance >= 6{
    instance_create(x,y-16,obj_scen_tree);
}*/

//Spawn veggie grass
/*chanceb = random(8);
if chanceb > 6{
    alarm[7] = 2;
}*/
