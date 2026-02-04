function scr_D12_Gust() {
	// Location Soul Item Step Before Event

	if sWindGustTime > 0 {
	    var _suckpow = (20 + (40 * global.D[12])) * (1 + global.teleportboost);
	    scr_Enemy_Bullet_Suck(-_suckpow);
		var _dmg_ind_on = false
		
		if sWindGustTime == 1 {
			_dmg_ind_on = true;	
		}
		
		with(obj_Boss_Parent) {
			var _dir = point_direction(other.x, other.y, x, y)
			var _dist = point_distance(other.x, other.y, x, y)
			var _mag = (_suckpow * 30) / (1 + _dist);
			
			x += lengthdir_x(_mag, _dir)
			y += lengthdir_y(_mag, _dir)
			
			if _mag > 1 {
				bosshealth -= _mag / 2.5;
				
				if _dmg_ind_on {
					scr_setup_dmg_indicator(x,y, _mag * 3.2, c_white);
				}	
			}
		}
	}
}
