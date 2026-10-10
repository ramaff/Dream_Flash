global.bosscount = 0;
global.bossval = 0;
global.currentchapter = 1;
global.currentroom = 0;

global.spiritRoom = -1;
global.evilSpiritRoom = -1;

var _tex_array = texturegroup_get_textures( "default");
for (var i = 0; i < array_length(_tex_array); ++i)
{
   texture_prefetch(_tex_array[i]);
}

var _cursor = instance_create_depth(-64,-64, depth - 9999, obj_Dream_Cursor);

scr_Settings_Status_Store();

scr_Controls_Setup();

scr_Load_Options();

if global.gameFullscreen = 1 {
    window_set_fullscreen(true);
}

window_center()

alarm[0]=2