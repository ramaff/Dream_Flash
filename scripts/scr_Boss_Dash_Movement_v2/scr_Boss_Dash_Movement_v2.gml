function scr_Boss_Dash_Movement_v2(_d_speed_up_time, _d_speed_down_time) {

	if pattern_count > (pattern_count_max - _d_speed_up_time) {
		dash_speed += max_dash_speed / _d_speed_up_time;	
		if dash_speed > max_dash_speed {
			dash_speed = max_dash_speed;	
		}
	}
	if pattern_count < _d_speed_down_time {
		dash_speed -= max_dash_speed / (_d_speed_down_time - 1);	
		if dash_speed < 0 {
			dash_speed = 0;	
		}
	}


}
