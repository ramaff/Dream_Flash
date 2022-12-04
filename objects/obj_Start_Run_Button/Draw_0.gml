draw_set_halign(fa_center);
draw_set_colour(c_white);

draw_self();

midx = room_width / 2 + 32;
midy = room_height / 2 + 32;

if load = 1 {

    draw_text(midx,midy - 140, string_hash_to_newline("START A NEW DREAM OR CONTINUE?"))
    draw_text(x,y-8, string_hash_to_newline("CONTINUE"))

}

if load = 0 {

    draw_text(x,y-8, string_hash_to_newline("NEW DREAM"))

}

