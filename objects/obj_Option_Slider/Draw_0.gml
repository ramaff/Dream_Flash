draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_sprite_part_ext(sprite_index,1,-256 * (1 - (percent / 100)),0,256,32,x - 128 - 256 * (1 -(percent / 100)),y - 16,image_xscale,image_yscale,c_white,image_alpha);

draw_set_font(Dream_Flash_Font);
draw_set_colour(c_white);
draw_set_halign(fa_center);


draw_text(x+160,y-16, string_hash_to_newline(string(percent)));

