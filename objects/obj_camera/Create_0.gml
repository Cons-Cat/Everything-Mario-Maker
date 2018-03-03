//Camera creation

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
//xborder = 160;
//yborder = 64;
xborder = 1920;
yborder = 1080;
xTemp = 0;
yTemp = 0;
yZoomOff = 0;
yZoomOffVal = 1.42*8;
guiZoom = 1;
guiZoomVal = 0.015;
zoomOutGone = 0;
camera = camera_create_view(0, 0, 3840, 2160, 0, obj_camera, -1, -1, xborder, yborder);
gridId = layer_background_get_id("Grid");
gridAlpha = 1;

zoomOffY = 0;

view_w = 0;
new_w = 0;
view_h = 0;
new_h = 0;
shift_x = 0;
shift_y = 0;

x = 210*8;

//Set view0 to use the camera "camera"
view_set_camera(0, camera);

zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);
