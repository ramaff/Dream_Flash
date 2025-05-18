function scr_P10() {
	// Soul Item Step

	var _base_mult = 0.9;
	repeat(global.P[10]) {
		_base_mult = _base_mult * 0.8;	
	}

		with(obj_Bullet_Parent) {
			if point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < 150 {
				var mspd = bulletspeedmax * _base_mult;
				if bulletspeed > mspd {
					bulletspeed -= bulletspeed * 0.05;
					speed -= speed * 0.05;
				}
			}
		}
		with(obj_bullet_parent_v2) {
			if point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < 150 {
				var mspd = bullet_stats.bullet_speed_max * _base_mult;
				if bullet_stats.bullet_speed > mspd {
					bullet_stats.bullet_speed -= bullet_stats.bullet_speed * 0.05;
					speed -= speed * 0.05;
				}
			}
		}


}
