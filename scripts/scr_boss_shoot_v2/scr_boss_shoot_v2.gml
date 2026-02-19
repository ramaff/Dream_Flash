function scr_shoot_bullets(_attack_stats, _xx, _yy) {
	var _dir = -(_attack_stats.bullet_spread * (_attack_stats.bullet_count - 1) / 2);
	var _bull = asset_get_index(_attack_stats.bullet_type);
	
	//Print_DF("shooting shots")
	//Print_DF(_attack_stats.bullet_direction)
	var _og_bull = noone;
	
	repeat(_attack_stats.bullet_count) {
		var _c_bull = noone;
		with instance_create_depth(_xx, _yy, depth, _bull) {
			bullet_stats = variable_clone(_attack_stats)
	        scr_bullet_shoot_properties_v2(bullet_stats);

			bullet_stats.bullet_direction += _dir
			direction = bullet_stats.bullet_direction;
			//Print_DF(direction mod 360)
			if bullet_stats.bullet_direction_angle = 1 {
				image_angle = direction;
			}
			image_alpha = bullet_stats.bullet_alpha;
			_c_bull = id
			_og_bull = id;
		}
	    
		repeat(_attack_stats.follow_bullets) {
		    with instance_create_depth(_xx, _yy, depth, obj_follow_the_leader_bullet_v2) {
				bullet_stats = variable_clone(_attack_stats)
		        scr_bullet_shoot_properties_v2(bullet_stats);

				bullet_stats.bullet_direction += _dir
				direction = bullet_stats.bullet_direction;
				if bullet_stats.bullet_direction_angle = 1 {
					image_angle = direction;
				}
				bullet_stats.bullet_target = _c_bull
				_c_bull = id
		    }
		}
		
		var _ang = 0;
		repeat(_attack_stats.school_bullets) {
		    with instance_create_depth(_xx, _yy, depth, obj_school_bullet_v2) {
				bullet_stats = variable_clone(_attack_stats)
		        scr_bullet_shoot_properties_v2(bullet_stats);

				bullet_stats.orbit_angle = _ang
				direction = bullet_stats.orbit_angle;
				if bullet_stats.bullet_direction_angle = 1 {
					image_angle = direction;
				}
				bullet_stats.bullet_target = _c_bull
		    }
			_ang += 360 / _attack_stats.school_bullets
		}
	    _dir += _attack_stats.bullet_spread;
	}
	return _og_bull
}

function scr_boss_shoot_v2(_attack_stats = attack_stats, _absolute_pos = false) {
	scr_spirit_boss_bull_fx_pre_v2(_attack_stats);
	
	var _xx = x + _attack_stats.boss_xoffset;
	var _yy = y + _attack_stats.boss_yoffset;
		
	if _absolute_pos {
		_xx = _attack_stats.boss_xoffset;	
		_yy = _attack_stats.boss_yoffset;	
	}

	return scr_shoot_bullets(_attack_stats, _xx, _yy)

}
