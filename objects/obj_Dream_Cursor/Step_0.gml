/// @description Insert description here
// You can write your code in this editor

movement_delay--;

if movement_delay <= 0 {
	event_user(0);
}

if InputDeviceGetAnyActive() {
	controller_movement++;	
}

if InputReleased(INPUT_VERB.ACCEPT) {
	if instance_exists(target_button) {
		with(target_button) {
			event_perform(ev_mouse, ev_left_release)	
		}
	}
}

if !InputMouseMoved() and controller_movement > 0 {
	
	//image_alpha = 0;
	stop_following_mouse++;

	
	var dx = InputValue(INPUT_VERB.AS_RIGHT ) - InputValue(INPUT_VERB.AS_LEFT );
	var dy = InputValue(INPUT_VERB.AS_DOWN ) - InputValue(INPUT_VERB.AS_UP );

	
	var distance_per_step = sqrt(dx*dx + dy*dy);
	
	if distance_per_step != 0 {
		//var move_point = point_direction(0,0, soulCurrentHorizontalSpeed, soulCurrentVerticalSpeed);
	    
		dx /= distance_per_step;
		dy /= distance_per_step;
	
		hspeed += dx * 1
		vspeed += dy * 1
		
		hspeed = clamp(hspeed, distance_per_step * dx * -15, distance_per_step * dx * 15);
		vspeed = clamp(vspeed, distance_per_step * dy * -15, distance_per_step * dy * 15);
	
	} else {
		hspeed = 0;
		vspeed = 0;
	}
	
	var _cur_x = camera_get_view_x(view) + 5;
	var _cur_y = camera_get_view_y(view) + 5;
	var winx = /*camcon.window_scale * camcon.view_zoom **/ camera_get_view_width(view) - 10;
	var winy = /*camcon.window_scale * camcon.view_zoom **/ camera_get_view_height(view) - 10;
	
	x = clamp(x, _cur_x, _cur_x + winx);
	y = clamp(y, _cur_y, _cur_y + winy);
	
} else {
	stop_following_mouse = 0;
	controller_movement = 0;
	image_alpha = 1;
}

if stop_following_mouse < 1 {

	if window_has_focus() {
	    x = mouse_x;
	    y = mouse_y;
	}
}
/*
if stop_following_mouse = 0 {
	controller_movement = 0;	
}
