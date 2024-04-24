function scr_Enemy_Bullet_Orbit_Suck(_shut = 1) {
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
