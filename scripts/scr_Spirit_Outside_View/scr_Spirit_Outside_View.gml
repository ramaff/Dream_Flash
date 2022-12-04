function scr_Spirit_Outside_View() {
	if currentphase = 1 {
	    var vleft = camera_get_view_x(view);
	    var vtop = camera_get_view_y(view);
	    var vright = camera_get_view_x(view) + camera_get_view_width(view);
	    var vbottom = camera_get_view_y(view) + camera_get_view_height(view);
    
	    var rleft = 0;
	    var rright = room_width;
	    var rtop = 0;
	    var rbottom = room_height;
    
	    if x < (vleft - 104) || x > (vright + 104) || y < (vtop - 104) || y > (vbottom + 104) {
	        speed = 7 * bossmovespeed;
	    } else {
	        speed = 0.66 * bossmovespeed;
	    }
    
	    if x < rleft || x > rright || y < rtop || y > rbottom {
	        instance_destroy();
	    }
	}



}
