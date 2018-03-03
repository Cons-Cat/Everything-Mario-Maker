event_inherited();

dir1 = 1;
max_speed = 1;
jumping = 0;
slopeVOff = 0;
editing = 1;
holdingItem = 0;
pounding = 0;
poundRotateAlarm = 0;
poundCounter = 0;
groundPoundSpdBase = 3;
groundPoundSpd = groundPoundSpdBase;
groundPoundRaise = 0;
poundAngle = 0;
poundCanCancel = 0;
dir = 0;
enemy = 0;
item = 0;
dead = 0;
xTemp = 1;
movingH = 0;
movingV = 0;

image_speed = 0;
imageXscale = 8;
xscaleFix = 0;
altOffset = -64;

selectBoundWidth = 128;
selectBoundHeight = 256;

//Physics Constants
c_gravity = 0.26 * 8;
phy_walkspeed = 1.1 * 8;
phy_runspeed = 2.1 * 8;
phy_acceleration = .2 * 8;
phy_deceleration = .2 * 8;
phy_deceleration_air = .1 * 8;
phy_jumpheight = 5.5 * 8;

phy_editorspeed = 2.2 * 8;
phy_acceleration_editor = .38 * 8;
phy_deceleration_editor = .48 * 8;

//Input
_left = vk_left;
_right = vk_right;
_up = vk_up;
_down = vk_down;
_jump = ord("X");
_run = ord("Z");
