/// @description 
if jumpOffset >= 0 && select = 0 {
	jumpVspeed = 0;
	jumpOffset = 0;
	jumpGone = 0;
}

if jumpOffset >= 0 && select = 1 {
	jumpOffset = 0;
	jumpGone = 0;
    
	if jump = 1 {
	    jumpVspeed = -1.94*8;
	}
	if jump = 2 {
	    jumpVspeed = -0.90*8;
	}
	if jump = 3 {
		jumpVspeed = 0;
		jump = 4;
		
		alarm[0] = 74;
	}
}
