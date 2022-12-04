

	depth = -999;
	
    draw_self();
    
    draw_set_font(Dream_Flash_Font);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);

		
	if type = 10 {
		draw_text(x,y-12, string_hash_to_newline("Reset to Default"));
	}
