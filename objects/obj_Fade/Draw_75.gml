alpha = clamp(alpha + (fade * 0.016),0,1.44);

if (alpha = 1.44) {
    fade = -1;
}

if alpha = 0 and fade = -1 {
    instance_destroy();
}

draw_set_color(c_black);

draw_set_alpha(alpha);

draw_rectangle(0,0,global.gameResolutionX * 2,global.gameResolutionY * 2,0);
 
//draw_rectangle(view_xview,view_yview,view_xview + window_get_width(),view_yview + window_get_height(),0);

draw_set_alpha(1);
