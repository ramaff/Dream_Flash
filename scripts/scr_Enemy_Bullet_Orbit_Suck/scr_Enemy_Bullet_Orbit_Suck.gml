function scr_linear_suck(_suck_speed, _suck_angle) {
	if (distance_to_object(other) < (200 + abs(_suck_speed * 200))) {
	    x += lengthdir_x(_suck_speed, _suck_angle);
	    y += lengthdir_y(_suck_speed, _suck_angle);
	} 
}

function scr_circular_suck(_suck_speed, _suck_angle, _offset = 90) {
	_suck_speed = _suck_speed * 0.66;
	if (distance_to_object(other) < (200 + abs(_suck_speed * 200))) {
		x += lengthdir_x(_suck_speed, _suck_angle + _offset);
	    y += lengthdir_y(_suck_speed, _suck_angle + _offset);
		_suck_speed = _suck_speed * 0.5;
		x += lengthdir_x(_suck_speed, _suck_angle);
	    y += lengthdir_y(_suck_speed, _suck_angle);
	} 
}

function scr_suck_all(_suck_factor = 1, _xx = x, _yy = y, _target_angle = undefined) {
	var _suck_speed = 0;
	var _suck_angle = 0;
	var _real_suck_fac = _suck_factor * 200

	with (obj_Bullet_Parent) {
	    _suck_speed = _real_suck_fac / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
       
		scr_linear_suck(_suck_speed, _suck_angle);
	}
	with (obj_bullet_parent_v2) {
	    _suck_speed = _real_suck_fac / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
		scr_linear_suck(_suck_speed, _suck_angle);
	}
	with (obj_Basic_Projectile_Parent) {
	    _suck_speed = _real_suck_fac / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
        scr_linear_suck(_suck_speed, _suck_angle);
	}
	
	with (obj_Soul_Parent) {
	    _suck_speed = (_real_suck_fac / 2) / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
        scr_linear_suck(_suck_speed, _suck_angle);
	}
}

function scr_suck_all_into_angle(_suck_type = scr_linear_suck, _suck_factor = 1, _xx = x, _yy = y, _target_angle = undefined) {
	var _suck_speed = 0;
	var _suck_angle = 0;
	var _real_suck_fac = _suck_factor * 200

	with (obj_Bullet_Parent) {
	    _suck_speed = _real_suck_fac / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
        var _diff = abs(angle_difference(_suck_angle, _target_angle))
		
		if _diff > 110 {
			break;	
		}
        
	    if _diff > 15 and _suck_type == scr_circular_suck {
			var _offset = 90;
			if _diff < 0 {
				_offset = -90
			}
			scr_circular_suck(_suck_speed, _suck_angle, _offset)
		} else {
			scr_linear_suck(_suck_speed, _suck_angle)	
		}
	}
	with (obj_bullet_parent_v2) {
	    _suck_speed = _real_suck_fac / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
		var _diff = abs(angle_difference(_suck_angle, _target_angle))
		
		if _diff > 110 {
			break;	
		}
        
	    if _diff > 15 and _suck_type == scr_circular_suck {
			var _offset = 90;
			if _diff < 0 {
				_offset = -90
			}
			scr_circular_suck(_suck_speed, _suck_angle, _offset)
		} else {
			scr_linear_suck(_suck_speed, _suck_angle)	
		}
	}
	with (obj_Basic_Projectile_Parent) {
	    _suck_speed = _real_suck_fac / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
		var _diff = abs(angle_difference(_suck_angle, _target_angle))
		
		if _diff > 110 {
			break;	
		}
        
	    if _diff > 15 and _suck_type == scr_circular_suck {
			var _offset = 90;
			if _diff < 0 {
				_offset = -90
			}
			scr_circular_suck(_suck_speed, _suck_angle, _offset)
		} else {
			scr_linear_suck(_suck_speed, _suck_angle)	
		}
	}
	
	with (obj_Soul_Parent) {
	    _suck_speed = (_real_suck_fac / 2) / (distance_to_object(other) + 150);
	    _suck_angle = point_direction(x,y,_xx,_yy);
        var _diff = abs(angle_difference(_suck_angle, _target_angle))
		
		if _diff > 110 {
			break;	
		}
        
	    if _diff > 15 and _suck_type == scr_circular_suck {
			var _offset = 90;
			if _diff < 0 {
				_offset = -90
			}
			scr_circular_suck(_suck_speed, _suck_angle, _offset)
		} else {
			scr_linear_suck(_suck_speed, _suck_angle)	
		}
	}
}

function scr_Enemy_Bullet_Orbit_Suck(_shut = shot_stats.Shot_Suck) {
	var _suck_speed = 0;
	var _suck_angle = 0;

	with (obj_Bullet_Parent) {
	    _suck_speed = (_shut * 200) / (distance_to_object(other) + 100);
	    _suck_angle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(_suck_speed * 100))) {
	        x += lengthdir_x(_suck_speed, _suck_angle);
	        y += lengthdir_y(_suck_speed, _suck_angle);
			x += lengthdir_x(_suck_speed, _suck_angle + 90);
	        y += lengthdir_y(_suck_speed, _suck_angle + 90);
	    } 
	}
	with (obj_bullet_parent_v2) {
	    _suck_speed = (_shut * 200) / (distance_to_object(other) + 100);
	    _suck_angle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(_suck_speed * 100))) {
	        x += lengthdir_x(_suck_speed, _suck_angle);
	        y += lengthdir_y(_suck_speed, _suck_angle);
			x += lengthdir_x(_suck_speed, _suck_angle + 90);
	        y += lengthdir_y(_suck_speed, _suck_angle + 90);
	    } 
	}
	with (obj_Basic_Projectile_Parent) {
	    _suck_speed = (_shut * 200) / (distance_to_object(other) + 100);
	    _suck_angle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(_suck_speed * 100))) {
	        x += lengthdir_x(_suck_speed, _suck_angle);
	        y += lengthdir_y(_suck_speed, _suck_angle);
			x += lengthdir_x(_suck_speed, _suck_angle + 90);
	        y += lengthdir_y(_suck_speed, _suck_angle + 90);
	    } 
	}
	with (obj_Soul_Parent) {
	    _suck_speed = (_shut * 100) / (distance_to_object(other) + 100);
	    _suck_angle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(_suck_speed * 100))) {
	        x += lengthdir_x(_suck_speed, _suck_angle);
	        y += lengthdir_y(_suck_speed, _suck_angle);
			x += lengthdir_x(_suck_speed, _suck_angle + 90);
	        y += lengthdir_y(_suck_speed, _suck_angle + 90);
	    } 
	}




}
