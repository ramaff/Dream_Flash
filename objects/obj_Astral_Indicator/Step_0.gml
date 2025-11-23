if !InputMouseMoved() {
	stop_following_mouse++;
	var dx = InputCheck(INPUT_VERB.AS_RIGHT ) - InputCheck(INPUT_VERB.AS_LEFT );
	var dy = InputCheck(INPUT_VERB.AS_DOWN ) - InputCheck(INPUT_VERB.AS_UP );
	
	var distance_per_step = sqrt(dx*dx + dy*dy);
	
	if distance_per_step != 0 {
		//var move_point = point_direction(0,0, soulCurrentHorizontalSpeed, soulCurrentVerticalSpeed);
	    
		dx /= distance_per_step;
		dy /= distance_per_step;
	
		x += dx * 15
		y += dy * 15
	
	}
} else {
	stop_following_mouse = 0;	
}

if stop_following_mouse < 15 {

	if window_has_focus() {
	    x = mouse_x;
	    y = mouse_y;
	}
}

if scr_Room_Leavable() {
    scr_Adjacent_Room_Cloud();
}

/*if global.bosscount = 0 and scr_Negative_Room_Check() {
    scr_Adjacent_Room_Cloud();
} */