if global.doneLoading = 0 {
    draw_set_colour(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
    draw_set_font(Dream_Flash_Font);
    draw_set_color(c_white);
    draw_text(window_get_width() / 2,window_get_height() / 2,string_hash_to_newline("Loading Dreamscape"));
    draw_set_color(c_black);
}

