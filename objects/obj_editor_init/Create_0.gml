//Enable the use of views
//view_enabled = true;

//Make view 0 visible
//view_set_visible(0, true);

//Set the port bounds of view 0 to 480x270
//view_set_wport(0, 3840);
//view_set_hport(0, 2160);

/// Display Properties
zoom = 0.25;
max_zooom = 1;
//Set up tile bar values
ini_open(working_directory + "classicFangameTiles.ini");

ini_write_real("tiles", "tile1", 1);
ini_write_real("tiles", "tile2", 2);
ini_write_real("tiles", "tile3", 1);
ini_write_real("tiles", "tile4", 1);
ini_write_real("tiles", "tile5", 1);
ini_write_real("tiles", "tile6", 1);
ini_write_real("tiles", "tile7", 1);
ini_write_real("tiles", "tile8", 1);

ini_write_real("tiles", "tile9", 2);
ini_write_real("tiles", "tile10", 1);
ini_write_real("tiles", "tile11", 2);
ini_write_real("tiles", "tile12", 1);
ini_write_real("tiles", "tile13", 1);
ini_write_real("tiles", "tile14", 2);
ini_write_real("tiles", "tile15", 1);
ini_write_real("tiles", "tile16", 2);

ini_write_real("tiles", "tile17", 2);
ini_write_real("tiles", "tile18", 2);
ini_write_real("tiles", "tile19", 2);
ini_write_real("tiles", "tile20", 2);
ini_write_real("tiles", "tile21", 2);
ini_write_real("tiles", "tile22", 2);
ini_write_real("tiles", "tile23", 2);
ini_write_real("tiles", "tile24", 2);

alarm[0] = 1;
