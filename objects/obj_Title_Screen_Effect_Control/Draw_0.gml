    draw_set_halign(fa_left);
    draw_set_colour(c_white);
	draw_set_font(Dream_Flash_Font);
	
	if window_has_focus() {
    
	    startx = camera_get_view_x(view);
	    starty = camera_get_view_y(view);
		bottomy = starty + (camera_get_view_height(view)/* / camcon.view_zoom */);
    
	    draw_text(startx + 8, bottomy - 20, string_hash_to_newline("Dream Flash Demo 21.5 (beta)"));
	
	}

