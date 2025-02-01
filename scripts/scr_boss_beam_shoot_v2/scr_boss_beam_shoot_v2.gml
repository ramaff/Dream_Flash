function scr_shoot_beam(_attack_stats, _xx, _yy, _lightning = false) {
	var _dir = -(_attack_stats.bullet_spread * (_attack_stats.bullet_count - 1) / 2);
	var _bull = asset_get_index(_attack_stats.bullet_type);
	
	var _seg_size = 128 * _attack_stats.bullet_size;

	var _seg_tail = noone;
	
	var _beam_segments = 18;
	
	_attack_stats.bullet_sprite_ontop = spr_Boss_Beam_Segment_Ontop
	_attack_stats.bullet_sprite_ontoptop = spr_Boss_Beam_Segment_Ontoptop

	repeat(_attack_stats.bullet_count) {
		var _zag = -0.5 + irandom(1);
		var _next_seg_offset = 0;
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
					if bullet_stats.bullet_direction_angle = 1 {
						seg_angle = direction - other.image_angle;
						seg_angle_displacement = other.image_angle;
					}
					
					bullet_stats.bullet_sprite_ontop = spr_Boss_Beam_Start_Ontop
					bullet_stats.bullet_sprite_ontoptop = spr_Boss_Beam_Start_Ontoptop
				} else {
					seg_tail = _seg_tail;
					image_xscale = seg_tail.image_xscale;
					image_yscale = seg_tail.image_yscale;
					
				}
				if _count = (_beam_segments - 1) {
					sprite_index = spr_Boss_Beam_Tail;
					depth -= 5;
					bullet_stats.bullet_sprite_ontop = spr_Boss_Beam_Tail_Ontop
					bullet_stats.bullet_sprite_ontoptop = spr_Boss_Beam_Tail_Ontop
				} else if _lightning = true {
					if (_count mod 3 = 2) and scr_Chance(1.5) {
						if _zag = -0.5 {
							_zag = 0.5;
							image_yscale = -bullet_stats.bullet_size;
							//image_xscale = -image_xscale;
							
							//seg_angle -= 90
						} else if _zag = 0.5 {
							_zag = -0.5;
							image_yscale = bullet_stats.bullet_size;
							//image_yscale = -image_yscale;
						}
						//image_yscale = -image_yscale;
						seg_angle_displacement = 180 * _zag;
						with seg_tail {
							//seg_tail.seg_distance = seg_tail.seg_distance / 1.5;
							seg_distance = seg_distance * 2
							//scr_boss_beam_position_update();
						}
						//seg_angle += seg_angle_displacement
						bullet_stats.bullet_sprite = "spr_Lightning_Beam_Turn";
						bullet_stats.bullet_sprite_ontop = spr_Lightning_Beam_Turn_Ontop
						bullet_stats.bullet_sprite_ontoptop = spr_Lightning_Beam_Turn_Ontoptop
						sprite_index = spr_Lightning_Beam_Turn;
					}
				}

				scr_boss_beam_position_update()
		
				_seg_tail = id;
			}
			//_xx += lengthdir_x(_seg_size, _attack_stats.bullet_direction + _dir)
			//yy += lengthdir_y(_seg_size, _attack_stats.bullet_direction + _dir)
		}
		_dir += _attack_stats.bullet_spread;
	}
	
}

function scr_boss_beam_shoot_v2(_attack_stats = attack_stats, _absolute_pos = false, _lightning = false) {
	scr_spirit_boss_bull_fx_pre_v2(_attack_stats);
	
	var _xx = x + _attack_stats.boss_xoffset;
	var _yy = y + _attack_stats.boss_yoffset;
		
	if _absolute_pos {
		_xx = _attack_stats.boss_xoffset;	
		_yy = _attack_stats.boss_yoffset;	
	}
	
	scr_shoot_beam(_attack_stats, _xx, _yy, _lightning)

}
