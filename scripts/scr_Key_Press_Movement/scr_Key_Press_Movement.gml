// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Key_Press_Movement(_vspeed = 0, _hspeed = 0, _max_speed = 5, _acceleration = 1, _friction = 0.2, _hard_cap = true){

    if instance_exists(obj_new_mega_map){
        return {
            h_speed : 0,
            v_speed : 0
        }
    }

	var dx = InputValue(INPUT_VERB.RIGHT ) - InputValue(INPUT_VERB.LEFT );
	var dy = InputValue(INPUT_VERB.DOWN ) - InputValue(INPUT_VERB.UP );
	
	var _xmag = abs(dx);
	var _ymag = abs(dy);
	
	var distance_per_step = sqrt(dx*dx + dy*dy);
	
	if distance_per_step != 0 {
	    
	    dx /= distance_per_step;
	    dy /= distance_per_step;
	
	}
	
	var _current_direction = point_direction(0,0, _hspeed + dx * _acceleration * _xmag, _vspeed + dy * _acceleration * _ymag);
	
	var _max_hspeed = abs(lengthdir_x(_max_speed, _current_direction))
	var _max_vspeed = abs(lengthdir_y(_max_speed, _current_direction))
	
	var _h_reduce = (_max_hspeed / _max_speed) * _friction
	var _v_reduce = (_max_vspeed / _max_speed) * _friction

	_hspeed = scr_Converge(_hspeed, 0, _h_reduce)
	_vspeed = scr_Converge(_vspeed, 0, _v_reduce)
	
	if distance_per_step != 0 {

		_hspeed += dx * _acceleration * _xmag
		_vspeed += dy * _acceleration * _ymag
	
	}
	
	if _hard_cap {
		_hspeed = clamp(_hspeed, -_max_hspeed, _max_hspeed)
		_vspeed = clamp(_vspeed, -_max_vspeed, _max_vspeed)
	}
	
	return {
		v_speed: _vspeed,	
		h_speed: _hspeed
	}

}