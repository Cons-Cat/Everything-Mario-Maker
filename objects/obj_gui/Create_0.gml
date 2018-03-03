level = 0;
maxLevel = 2;
inEditor = 1;
dim = 0;
topOffset = 0;
shadowAlphaDefault = 0.788235;
shadowAlpha = shadowAlphaDefault;
onionIndex = 0;
flagDrag = 0;
flagDragAlign = flagDrag;
tempFlagDrag = 0;
instanceSelected = 0;

barAngle = 0;
barFlip = 0;
barSpeedDefault = 5;
barSpeed = barSpeedDefault;
barSpeedAcel = 0.55;
playHop = 0;
playHopY = 0;
playHopSpdDefault = 5*8;
playHopSpd = playHopSpdDefault;
playHopAcel = 0.7*8;

zoom = 0.25;
tempZoom = zoom;
window_set_size(3840*zoom,2160*zoom);
alarm[0] = 1;

//depth = -200;
instance_create_layer(0,0,layer,obj_tilegui_control);
instance_create_layer(0,0,layer_get_id("ShadowInterface"),obj_play_shadow);

//usize = shader_get_uniform(shd_blur,"size");//uniform for width, height, radius

//guiSurf = surface_create(3840,2160);

inEditorWidth = 3840;
inEditorHeight = 2160;

inGameWidth = 3840 * 0.8;
inGameHeight = 2160 * 0.8;

guiWidth = inEditorWidth;
guiHeight = inEditorHeight;

//Blur shader
//usize = shader_get_uniform(shader,"size");//uniform for width, height, radius
//surf = surface_create(384,512)

//application_surface_draw_enable(false);

var backId = layer_background_get_id("Background");
layer_background_xscale(backId,8);
layer_background_yscale(backId,8);
layer_background_stretch(backId,false);
