

var _i;
var _script_count = array_length(shot_stats.Shot_Step_Scripts)
for(_i = 0; _i < _script_count; _i++) {
	script_execute(shot_stats.Shot_Step_Scripts[_i])	
}

shot_stats.Shot_Exist_Time++;

if InputReleased(INPUT_VERB.SHOOT) {
	if shot_stats.Shot_Orbital_Type = 1 {
		if instance_exists(otarget) {
			direction = point_direction(otarget.x, otarget.y, mouse_x, mouse_y)
		} else {
			direction = point_direction(x, y, mouse_x, mouse_y)
		}
	    speed = shot_stats.Shot_Speed;
	    shot_stats.Shot_Orbital_Type = 0;
	
		var _i = array_get_index(shot_stats.Shot_Step_Scripts, scr_Shot_Rotate)
		array_delete(shot_stats.Shot_Step_Scripts, _i, 1)
	}
}



