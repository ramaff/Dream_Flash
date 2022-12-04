
    image_index = 0;
    if type < 0 {
        image_index = 1;
    }
	if category = 2 {
		sprite_index = spr_Option_Button;
		
		image_index = 0;
		
		if awaitinput = 0 {
			draw_text(x,y-12, string_hash_to_newline("CHANGE"))
		} else {
			draw_text(x,y-12, string_hash_to_newline("PRESS KEY"))
		}
	}
	
    draw_sprite(sprite_index,image_index,x,y);
    
    draw_set_font(Dream_Flash_Font);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    
		