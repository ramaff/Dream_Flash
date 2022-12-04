function scr_Mouse_Follow_AI() {
	disx = abs(mouse_x - x);
	disy = abs(mouse_y - y);
	dis = sqrt((disx * disx) + (disy * disy));

	if dis < smovementspeed {
	    x = mouse_x;
	    y = mouse_y;
	} else {
	    move_towards_point(mouse_x,mouse_y,smovementspeed);
	}




}
