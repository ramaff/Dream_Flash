/// @description Insert description here
// You can write your code in this editor

if !InputMouseMoved() {
	stop_following_mouse++;
	
	if global.game_controller_gryo {
		
		var dx = InputValue(INPUT_VERB.AS_RIGHT ) - InputValue(INPUT_VERB.AS_LEFT );
		var dy = InputValue(INPUT_VERB.AS_DOWN ) - InputValue(INPUT_VERB.AS_UP );
		
		if dx != 0 || dy != 0 {
		
			var _xmag = abs(dx);
			var _ymag = abs(dy);
	
			var distance_per_step = min(_xmag + _ymag, 1)
		
			var _cx = obj_Soul_Parent.x;
			var _cy = obj_Soul_Parent.y;
		
			var _gyro_dist = distance_per_step * 800;
			var _gyro_ang = point_direction(0, 0, dx, dy);
		
			var _tx = _cx + lengthdir_x(_gyro_dist, _gyro_ang)
			var _ty = _cy + lengthdir_y(_gyro_dist, _gyro_ang)
			
			var _lerp_amount = 0.01 + (0.06 * global.game_controller_sensitivity);
			
			x = lerp(x, _tx, _lerp_amount)
			y = lerp(y, _ty, _lerp_amount)
			
			var _linear_amount = 1 + (10 * global.game_controller_sensitivity);
			
			x = scr_Converge(x, _tx, _linear_amount)
			y = scr_Converge(y, _ty, _linear_amount)
			
			/*if distance_to_object(obj_Item_Like) < (ITEM_HOVER_RANGE + 20) and _xmag < 1 and _ymag < 1 {
				x = lerp(x, instance_nearest(x, y, obj_Item_Like).x, 0.5)
				y = lerp(y, instance_nearest(x, y, obj_Item_Like).y, 0.5)
			} */
 		}
		
	} else {
		var dx = InputValue(INPUT_VERB.AS_RIGHT ) - InputValue(INPUT_VERB.AS_LEFT );
		var dy = InputValue(INPUT_VERB.AS_DOWN ) - InputValue(INPUT_VERB.AS_UP );

		var _xmag = abs(dx);
		var _ymag = abs(dy);
	
		var distance_per_step = sqrt(dx*dx + dy*dy);
		
		var _linear_accel = 0.2 + (4 * global.game_controller_sensitivity);
		var _linear_max_speed = 1 + (40 * global.game_controller_sensitivity);
	
		if distance_per_step != 0 {
			//var move_point = point_direction(0,0, soulCurrentHorizontalSpeed, soulCurrentVerticalSpeed);
	    
			dx /= distance_per_step;
			dy /= distance_per_step;
	
			hspeed += dx * _linear_accel
			vspeed += dy * _linear_accel
		
			hspeed = clamp(hspeed, _xmag * -_linear_max_speed, _xmag * _linear_max_speed);
			vspeed = clamp(vspeed, _ymag * -_linear_max_speed, _ymag * _linear_max_speed);
	
		} else {
			hspeed = 0;
			vspeed = 0;
		}
	
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

if stop_following_mouse < 60 || !InputDeviceGetAnyGamepadConnected() {

	if window_has_focus() {
	    x = mouse_x;
	    y = mouse_y;
	}
}
