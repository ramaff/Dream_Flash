var camX = camera_get_view_x(view) + (camera_get_view_width(view) / 2);
var camY = camera_get_view_y(view) + (camera_get_view_height(view) / 2);

if (Pause_Control.pause) {

    draw_set_colour(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
    
    //draw_sprite(spr_Recollection_Soul_Icon,0,camX + 216,camY - 208);
	
	draw_set_color(c_white);
	
	draw_text(camX + 40, camY - 274, "Items");
	draw_line_color(camX, camY - 254, camX + 300, camY - 254, c_white, c_white);
	
	if global.recollectionStateUnlocked = 1 {
		draw_text(camX - 304,camY + 176, "Switch to State Menu:");
	}
    
    //draw_sprite(spr_Soul_Menu_Essence,0,view_xview + 896,view_yview + 152);

}

