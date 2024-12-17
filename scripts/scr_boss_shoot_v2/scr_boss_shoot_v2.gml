function scr_boss_shoot_v2(_attack_stats = attack_stats, _absolute_pos = false) {
	scr_spirit_boss_bull_fx_pre_v2(_attack_stats);
	
	var _dir = -(_attack_stats.bullet_spread * (_attack_stats.bullet_count - 1) / 2);
	var _xx = x + _attack_stats.boss_xoffset;
	var _yy = y + _attack_stats.boss_yoffset;
		
	if _absolute_pos {
		_xx = _attack_stats.boss_xoffset;	
		_yy = _attack_stats.boss_yoffset;	
	}
		
	var _bull = asset_get_index(_attack_stats.bullet_type);
	/*if bullet_charged {
		bull = obj_Grow_Bullet_Ball;	
	} */
		
	repeat(_attack_stats.bullet_count) {
	    with instance_create(_xx, _yy, _bull) {
			bullet_stats = variable_clone(_attack_stats)
	        scr_bullet_shoot_properties_v2(bullet_stats);
			/*if other.bullet_charged {
				bulletgrowinto = other.bullet_type;
			} */
			direction = bullet_stats.bullet_direction + _dir;
			if bullet_stats.bullet_direction_angle = 1 {
				image_angle = direction;
			}
	    }
	    _dir += _attack_stats.bullet_spread;
	}

}
