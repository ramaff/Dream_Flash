function scr_shoot_beam(_attack_stats, _xx, _yy) {
	var _dir = -(_attack_stats.bullet_spread * (_attack_stats.bullet_count - 1) / 2);
	var _bull = asset_get_index(_attack_stats.bullet_type);
	
	var _seg_size = 128 * _attack_stats.bullet_size;

	var _seg_tail = noone;
	
	var _beam_segments = 25;

	repeat(_attack_stats.bullet_count) {
		for(var _count = 0; _count < _beam_segments; _count++) {
			with instance_create(_xx, _yy, _bull) {
				bullet_stats = variable_clone(_attack_stats)
		        scr_bullet_shoot_properties_v2(bullet_stats);
			
				direction = bullet_stats.bullet_direction + _dir;
				if bullet_stats.bullet_direction_angle = 1 {
					image_angle = direction;
				}
				bullet_stats.bullet_power = 0;
				
				seg_distance = _seg_size;
				seg_angle = direction;
				seg_angle_displacement = 0;
							
				if _count = 0 {
					sprite_index = spr_Boss_Beam_Start;
					//other.laser_start = id;
					seg_angle = direction - other.image_angle;
					seg_angle_displacement = other.image_angle;
				} else {
					seg_tail = _seg_tail;
				}
				if _count = (_beam_segments - 1) {
					sprite_index = spr_Boss_Beam_Tail;
					depth -= 5;
				}

				
				scr_boss_beam_position_update()
		
				_seg_tail = id;
			}
			_xx += lengthdir_x(_seg_size, _attack_stats.bullet_direction + _dir)
			_yy += lengthdir_y(_seg_size, _attack_stats.bullet_direction + _dir)
		}
		_dir += _attack_stats.bullet_spread;
	}
	
}

function scr_boss_beam_shoot_v2(_attack_stats = attack_stats, _absolute_pos = false) {
	scr_spirit_boss_bull_fx_pre_v2(_attack_stats);
	
	var _xx = x + _attack_stats.boss_xoffset;
	var _yy = y + _attack_stats.boss_yoffset;
		
	if _absolute_pos {
		_xx = _attack_stats.boss_xoffset;	
		_yy = _attack_stats.boss_yoffset;	
	}
	
	scr_shoot_beam(_attack_stats, _xx, _yy)

}
