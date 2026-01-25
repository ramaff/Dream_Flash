function scr_E10(_cw) {
	// Location Shot Creation

	if global.E[10] > 0 {
	    var stop = (_cw.Shot_Power * global.E[10]) + irandom(149);
		var _radius = sqrt(30000 * global.E[10])
	    if stop >= 150 {
			scr_Particle_Burst(obj_Animated_Lightning_Streak, spr_Animated_Lightning_Streak, c_fuchsia, c_fuchsia, 10, 35, 0, 360, 20, 0.75, 30, false)
	    }
	    with(obj_Bullet_Parent) {
	        if stop >= 150 {
				if distance_to_object(other) <= _radius {
		            bulletspeed = bulletspeed / 10;
		            speed = speed / 10;
	            }
			}
	    }
		with(obj_bullet_parent_v2) {
	        if stop >= 150 {
				if distance_to_object(other) <= _radius {
		            bullet_stats.bullet_speed = bullet_stats.bullet_speed / 10;
		            speed = speed / 10;
	            }
			}
	    }
	}




}
