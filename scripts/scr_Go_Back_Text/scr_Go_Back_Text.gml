// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Go_Back_Text(){

	var startx = camera_get_view_x(view);
	var starty = camera_get_view_y(view);
	var bottomy = starty + (camera_get_view_height(view));
	
	if InputDeviceGetAnyGamepadConnected() {
		draw_sprite_ext(spr_Controller_Cancel_Icon, scr_Wave(0, 1.9, 1, 0), startx + 30, starty + 25, 0.5, 0.5, 0, c_white, 1)
		draw_text_colour(startx + 15, starty + 50, "back", c_white, c_white, c_white, c_white, 1)
	} else {
		draw_text_colour(startx + 20, starty + 20, "back: P", c_white, c_white, c_white, c_white, 1)
	}

}