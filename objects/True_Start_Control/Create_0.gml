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

instance_create_depth(x,y,0,Music_Control);

var _cursor = instance_create_depth(-64,-64, depth - 9999, obj_Dream_Cursor);

var _start = instance_create_depth(688, 424, depth - 1, obj_Start_Button)
var _settings = instance_create_depth(688, 472, depth - 1, obj_Settings_Button)
var _credits = instance_create_depth(688, 520, depth - 1, obj_Credits_Button)
var _quit = instance_create_depth(688, 568, depth - 1, obj_Quit_Button)

menu_grid = [];

menu_grid[0, 0] = _start;
menu_grid[0, 1] = _settings;
menu_grid[0, 2] = _credits;
menu_grid[0, 3] = _quit;

with (_cursor) {
	menu_grid = other.menu_grid;
	
	max_x = 0;
	max_y = 3;
	
	target_button = _start;
	if InputDeviceGetAnyGamepadConnected() {
		event_user(1);
	}
}
