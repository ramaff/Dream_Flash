// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Go_Back_Text(){
	
	draw_set_halign(fa_center);

	var startx = camera_get_view_x(view);
	var starty = camera_get_view_y(view);
	var bottomy = starty + (camera_get_view_height(view));
	
	var _ico_spr = spr_Keyboard_Key_Icon;
	
	if InputDeviceGetAnyGamepadConnected() {
		_ico_spr = spr_Controller_Cancel_Icon
	} 
	
	draw_sprite_ext(_ico_spr, scr_Wave(0, 1.9, 1, 0), startx + 30, starty + 25, 0.5, 0.5, 0, c_white, 1)
	draw_text_colour(startx + 25, starty + 45, "back", c_white, c_white, c_white, c_white, 1)
}
