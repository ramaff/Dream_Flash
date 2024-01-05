/// @description Insert description here
// You can write your code in this editor

if variable_struct_exists(global.tutorial_progress, tutorial_keyword) {
	if variable_struct_get(global.tutorial_info, tutorial_keyword) > final_page {
	    instance_destroy();
	    scr_Save();
	}
}

depth = -1000;


