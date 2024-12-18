function scr_shoot_bullets(_attack_stats, _xx, _yy) {
	var _dir = -(_attack_stats.bullet_spread * (_attack_stats.bullet_count - 1) / 2);
	var _bull = asset_get_index(_attack_stats.bullet_type);
	
	repeat(_attack_stats.bullet_count) {
	    with instance_create(_xx, _yy, _bull) {
			bullet_stats = variable_clone(_attack_stats)
	        scr_bullet_shoot_properties_v2(bullet_stats);

			direction = bullet_stats.bullet_direction + _dir;
			if bullet_stats.bullet_direction_angle = 1 {
				image_angle = direction;
			}
	    }
	    _dir += _attack_stats.bullet_spread;
	}	
}

function scr_boss_shoot_v2(_attack_stats = attack_stats, _absolute_pos = false) {
	scr_spirit_boss_bull_fx_pre_v2(_attack_stats);
	
	var _xx = x + _attack_stats.boss_xoffset;
	var _yy = y + _attack_stats.boss_yoffset;
		
	if _absolute_pos {
		_xx = _attack_stats.boss_xoffset;	
		_yy = _attack_stats.boss_yoffset;	
	}

	scr_shoot_bullets(_attack_stats, _xx, _yy)

}
