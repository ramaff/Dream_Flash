/// @description Insert description here
// You can write your code in this editor

if !InputMouseMoved() {
	stop_following_mouse++;
	var dx = InputValue(INPUT_VERB.AS_RIGHT ) - InputValue(INPUT_VERB.AS_LEFT );
	var dy = InputValue(INPUT_VERB.AS_DOWN ) - InputValue(INPUT_VERB.AS_UP );

	var _xmag = abs(dx);
	var _ymag = abs(dy);
	
	var distance_per_step = sqrt(dx*dx + dy*dy);
	
	if distance_per_step != 0 {
		//var move_point = point_direction(0,0, soulCurrentHorizontalSpeed, soulCurrentVerticalSpeed);
	    
		dx /= distance_per_step;
		dy /= distance_per_step;
	
		hspeed += dx * 1
		vspeed += dy * 1
		
		hspeed = clamp(hspeed, _xmag * -15, _xmag * 15);
		vspeed = clamp(vspeed, _ymag * -15, _ymag * 15);
	
	} else {
		hspeed = 0;
		vspeed = 0;
	}
	
	var _cur_x = camera_get_view_x(view) + 5;
	var _cur_y = camera_get_view_y(view) + 5;
	var winx = camera_get_view_width(view) - 10;
	var winy =  camera_get_view_height(view) - 10;
	
	x = clamp(x, _cur_x, _cur_x + winx);
	y = clamp(y, _cur_y, _cur_y + winy);
	
} else {
	stop_following_mouse = 0;	
}

if stop_following_mouse < 15 {

	if window_has_focus() {
	    x = mouse_x;
	    y = mouse_y;
	}
}
