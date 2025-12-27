if (Pause_Control.pause) {

    draw_set_colour(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
	
	if InputDeviceGetAnyGamepadConnected() {
		var startx = camera_get_view_x(view);
		var starty = camera_get_view_y(view);
		var bottomy = starty + (camera_get_view_height(view));
		draw_sprite_ext(spr_Controller_L_Butt_Icon, scr_Wave(0, 1.9, 1, 0.5), startx + 800, starty + 50, 0.5, 0.5, 0, c_white, 1)
		draw_sprite_ext(spr_Controller_R_Butt_Icon, scr_Wave(0, 1.9, 1, 0), startx + 840, starty + 50, 0.5, 0.5, 0, c_white, 1)
	} 
	

}

