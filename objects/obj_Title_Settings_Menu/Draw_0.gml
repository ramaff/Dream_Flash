//if global.layerdeep = 2 {

    draw_set_colour(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    //draw_set_halign(fa_center);
	
	var startx = camera_get_view_x(view);
	var starty = camera_get_view_y(view);
	var bottomy = starty + (camera_get_view_height(view));
	
	draw_text_colour(startx + 20, starty + 20, "back: ", c_white, c_white, c_white, c_white, 1)

//}

