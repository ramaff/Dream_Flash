/// @description Insert description here
// You can write your code in this editor

depth = -1000;

if (Pause_Control.pause) {
	var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
	var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

	x = camX;
	y = camY
	
	depth = -10000;
}

if variable_struct_exists(global.tutorial_progress, tutorial_keyword) {
	if variable_struct_get(global.tutorial_info, tutorial_keyword) > final_page {
	    scr_Save();
		instance_destroy();
	}
}

if text_alpha >= 1 {
	if InputPressed(INPUT_VERB.CANCEL) {
		current_page--;
	} else if InputPressed(INPUT_VERB.ACCEPT) {
		current_page++;
	}
	text_alpha = 0;
}
event_user(0);

