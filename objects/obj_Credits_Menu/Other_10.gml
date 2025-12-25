/// @description Insert description here
// You can write your code in this editor

if global.layerdeep = 2 {
    scr_Pause_Main_Leave();
    scr_Save_Options();
	
    var _cursor = instance_create(mouse_x,mouse_y,obj_Dream_Cursor);
	var _menu_grid = True_Start_Control.menu_grid
	
	with (obj_Menu_Button_Parent) {
		event_user(1)	
	}
	
	with (_cursor) {
		menu_grid = _menu_grid;
	
		max_x = 0;
		max_y = 3;
	
		target_button = menu_grid[0,0];
		if InputDeviceGetAnyGamepadConnected() {
			event_user(0);
		}
	}
	
    global.layerdeep = 1
}


