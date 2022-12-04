draw_set_font(Dream_Flash_Font);
draw_set_colour(c_black);
draw_set_halign(fa_center);
if global.layerdeep = 2 {
    draw_self();
    image_speed = 0;
    image_index = category - 1;
}

