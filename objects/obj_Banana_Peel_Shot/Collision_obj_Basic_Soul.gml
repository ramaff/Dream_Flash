/// @description Insert description here
// You can write your code in this editor
if point_distance(x, y, other.x, other.y) > 30 {
	exit;
}

scr_Soul_Shot_Soul_Hit();

var _slip_target = other
if (_slip_target.soulCurrentHorizontalSpeed != 0 || _slip_target.soulCurrentHorizontalSpeed != 0) and shot_stats.Shot_Soul_Maintain = 0 {
	
	var _time = 60 + irandom(15)
	var _force = 4 + irandom(1)
	
	scr_force_push(_slip_target, _time, _force, _force / _time, _slip_target.soulCurrentDirection - 60 + random(120))

	shot_stats.Shot_Soul_Maintain = 1;
	shot_stats.Shot_X_Maintain = x - _slip_target.x;
	shot_stats.Shot_Y_Maintain = y - _slip_target.y;
	alarm[0] = _time;
	shot_stats.Shot_Life_Span = _time

}



