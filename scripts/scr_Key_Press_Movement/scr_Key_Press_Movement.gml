// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Key_Press_Movement(_vspeed = 0, _hspeed = 0, _max_speed = 5, _acceleration = 1, _friction = 0.2, _hard_cap = true){

	var dx = keyboard_check(ord(global.gameMoveRight)) - keyboard_check(ord(global.gameMoveLeft));
	var dy = keyboard_check(ord(global.gameMoveDown)) - keyboard_check(ord(global.gameMoveUp));
	
	var distance_per_step = sqrt(dx*dx + dy*dy);
	
	if distance_per_step != 0 {
		//var move_point = point_direction(0,0, soulCurrentHorizontalSpeed, soulCurrentVerticalSpeed);
	    
	    dx /= distance_per_step;
	    dy /= distance_per_step;
	
		_hspeed += dx * _acceleration
		_vspeed += dy * _acceleration
	
	}
	
	var _current_direction = point_direction(0,0, _hspeed, _vspeed);
	
	var _max_hspeed = abs(lengthdir_x(_max_speed, _current_direction))
	var _max_vspeed = abs(lengthdir_y(_max_speed, _current_direction))
	
	var _h_reduce = _max_hspeed / _max_speed * _friction
	var _v_reduce = _max_vspeed / _max_speed * _friction

	_hspeed = scr_Converge(_hspeed, 0, _h_reduce)
	_vspeed = scr_Converge(_vspeed, 0, _v_reduce)
	
	if _hard_cap {
		_hspeed = clamp(_hspeed, -_max_hspeed, _max_hspeed)
		_vspeed = clamp(_vspeed, -_max_vspeed, _max_vspeed)
	}
	
	return {
		"v_speed": _vspeed,	
		"h_speed": _hspeed
	}

}