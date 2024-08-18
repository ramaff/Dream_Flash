    draw_set_halign(fa_left);
    draw_set_colour(c_white);
	draw_set_font(Dream_Flash_Font);
	
	if window_has_focus() {
    
	    var startx = camera_get_view_x(view);
	    var starty = camera_get_view_y(view);
		var bottomy = starty + (camera_get_view_height(view)/* / camcon.view_zoom */);
		
		var _full_version_string = scr_Build_Full_Version()
    
	    draw_text(startx + 8, bottomy - 20, string_hash_to_newline("Dream Flash Demo " + _full_version_string));
	
	}

