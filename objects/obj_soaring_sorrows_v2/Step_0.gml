/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

var _tar_x = obj_Soul_Parent.perX + scr_Wave(-300, 300, 4, 0);
var _tar_y = obj_Soul_Parent.perY - 190 - boss_height;
_tar_y = mean(top_tip, _tar_y, _tar_y)

var _speed_fac = 2;

if active_attack != 0 {
	_speed_fac = 0.25	
}


direction = point_direction(x, y, _tar_x, _tar_y)
speed = min(bossmovespeed * _speed_fac, point_distance(x, y, _tar_x, _tar_y))

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	if currentphase = 2 {
		active_attack = choose(3, 4);
	}
	if champ = 1 {
		active_attack = choose(5, 2);
		if currentphase = 2 {
			active_attack = choose(6, 7);
		}
	}
	if champ = 8 {
		active_attack = choose(8, 9);
		if currentphase = 2 {
			active_attack = choose(9, 10);
		}
	}
	
    if active_attack = 1 {
		var _attack_counts = 24;
		var _attack_gap = 10;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 180, 45, 10);
		
		tear_trail_tip_1 = noone;
    }
	if active_attack = 2 {
		var _attack_counts = 6;
		var _attack_gap = 60;
		var _added_dur = 10;
		if champ = 1 {
			_attack_counts = 8;	
		}
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 120, 30, _added_dur);
    }
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_counts = 24;
		var _attack_gap = 10;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 180, 45, 10);
		
		tear_trail_tip_1 = noone;
    }
	// Hop leap attack setup example
	if active_attack = 4 {
		var _attack_counts = 24;
		var _attack_gap = 10;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 180, 45, 10);
		
		tear_trail_tip_1 = noone;
		tear_trail_tip_2 = noone;
    }
	
	if active_attack = 5 {
		var _attack_counts = 360;
		var _attack_gap = 1;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 180, 45, 10);
    }
	if active_attack = 6 {
		var _attack_counts = 8;
		var _attack_gap = 50;
		var _added_dur = 10;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 180, 30, _added_dur);
    }
	if active_attack = 7 {
		var _attack_counts = 450;
		var _attack_gap = 1;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 180, 45, 10);
    }
	
	if active_attack = 8 {
		var _attack_counts = 24;
		var _attack_gap = 10;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 360, 45, 10);
		
		tear_trail_tip_1 = noone;
		tear_trail_tip_2 = noone;
    }
	if active_attack = 9 {
		var _attack_counts = 8;
		var _attack_gap = 80;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_counts, 50, _attack_gap, 240, 45, 10);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Horizontal", 0.15);
		
		attack_stats.bullet_direction = 270
		attack_stats.bullet_sprite = "spr_Holy_Tear_Bullet"
		attack_stats.bullet_type = "obj_follow_the_leader_bullet_v2"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_size = 0.35 + random(0.3);
		attack_stats.bullet_speed = bossbulletspeed * 1.35;
		attack_stats.bullet_life_span = 660;
		attack_stats.bullet_direction_angle = true;
		attack_stats.homing_speed = 1.5;
		
		if !instance_exists(tear_trail_tip_1) {
			attack_stats.bullet_type = "obj_increasing_homing_bullet_v2"
			tear_trail_tip_1 = scr_boss_shoot_v2();
		} else {
			attack_stats.follow_xoffset = -30 + random(60);
			attack_stats.follow_yoffset = -30 + random(60);
			attack_stats.bullet_target = tear_trail_tip_1
			tear_trail_tip_1 = scr_boss_shoot_v2();
		}
		
		if pattern_count mod 6 = 1 {
			attack_stats.bullet_sprite = "spr_Glowy_Orange_Shot"
			attack_stats.bullet_type = "obj_basic_bullet_v2"
			attack_stats.bullet_count = 6;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_speed = bossbulletspeed * 1.35;
			attack_stats.bullet_life_span = 300;
			attack_stats.boss_xoffset = -110;
			attack_stats.boss_yoffset = -50;
			
			if pattern_count mod 12 = 1 {
				attack_stats.boss_xoffset = 110;	
			}
			repeat(2) {
				scr_boss_shoot_v2();
				attack_stats.bullet_speed += bossbulletspeed * 0.3;
			}
		}
		

	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.5);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_Soaring_Echo"
		attack_stats.bullet_type = "obj_echo_bullet_v2"
		attack_stats.bullet_count = 3;
		attack_stats.bullet_spread = 45;
		attack_stats.bullet_direction_angle = true;
		attack_stats.bullet_life_span = 240;
		attack_stats.boss_xoffset = -110;
		attack_stats.boss_yoffset = -50;
			
		if pattern_count mod 2 = 1 {
			attack_stats.boss_xoffset = 110;	
		}
		
		if champ = 1 {
			attack_stats.bullet_count = 1;
			attack_stats.follow_bullets = 3;
			attack_stats.bullet_life_span = 330;
			attack_stats.bullet_sprite = "spr_Arcane_Echo"
			attack_stats.bullet_type = "obj_homing_echo_bullet_v2"
		}
		
		scr_boss_shoot_v2();
		
		if pattern_count mod 3 = 1 {
			attack_stats.bullet_sprite = "spr_Glowy_Orange_Shot"
			attack_stats.bullet_type = "obj_basic_bullet_v2"
			attack_stats.bullet_count = 10;
			attack_stats.bullet_spread = 20;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_speed = bossbulletspeed * 1.35;
			attack_stats.bullet_life_span = 300;
			attack_stats.boss_xoffset = 0;
			attack_stats.boss_yoffset = 0;
			attack_stats.bullet_direction = 270;
			var _count = 2;
			if champ = 1 {
				attack_stats.follow_bullets = 0;
				_count = 3;
				attack_stats.bullet_sprite = "spr_Glowy_Blue_Shot"
				attack_stats.bullet_speed = bossbulletspeed * 1.15;
			}
			repeat(_count) {
				scr_boss_shoot_v2();
				attack_stats.bullet_speed += bossbulletspeed * 0.3;
			}
		}
	}
	
	if active_attack = 3 {
		scr_Boss_Stretch("Horizontal", 0.15);
		
		attack_stats.bullet_direction = 270
		attack_stats.bullet_sprite = "spr_Holy_Tear_Bullet"
		attack_stats.bullet_type = "obj_follow_the_leader_bullet_v2"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_size = 0.35 + random(0.3);
		attack_stats.bullet_speed = bossbulletspeed * 1.35;
		attack_stats.bullet_life_span = 660;
		attack_stats.bullet_direction_angle = true;
		attack_stats.homing_speed = 1.5;
		
		if !instance_exists(tear_trail_tip_1) {
			attack_stats.bullet_type = "obj_increasing_homing_bullet_v2"
			tear_trail_tip_1 = scr_boss_shoot_v2();
		} else {
			attack_stats.follow_xoffset = -30 + random(60);
			attack_stats.follow_yoffset = -30 + random(60);
			attack_stats.bullet_target = tear_trail_tip_1
			tear_trail_tip_1 = scr_boss_shoot_v2();
		}
		
		if pattern_count mod 6 = 1 {
			attack_stats.bullet_sprite = "spr_Soaring_Echo"
			attack_stats.bullet_type = "obj_echo_bullet_v2"
			attack_stats.bullet_count = 3;
			attack_stats.bullet_spread = 45;
			attack_stats.bullet_direction_angle = true;
			attack_stats.bullet_life_span = 240;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_speed = bossbulletspeed * 1.35;
			attack_stats.boss_xoffset = -110;
			attack_stats.boss_yoffset = -50;
			
			if pattern_count mod 12 = 1 {
				attack_stats.boss_xoffset = 110;	
			}
			scr_boss_shoot_v2();
		}
		

	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 4 {
		scr_Boss_Stretch("Horizontal", 0.15);
		
		if pattern_count mod 12 = 1 {
			attack_stats.bullet_sprite = "spr_Glowy_Orange_Shot"
			attack_stats.bullet_type = "obj_basic_bullet_v2"
			attack_stats.bullet_count = 10;
			attack_stats.bullet_spread = 20;
			attack_stats.bullet_direction = 270;
			attack_stats.bullet_speed = bossbulletspeed * 1.35;
			attack_stats.bullet_life_span = 300;
			repeat(2) {
				scr_boss_shoot_v2();
				attack_stats.bullet_speed += bossbulletspeed * 0.3;
			}
		}
		
		attack_stats.bullet_direction = 210
		attack_stats.bullet_sprite = "spr_Holy_Tear_Bullet"
		attack_stats.bullet_type = "obj_follow_the_leader_bullet_v2"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_size = 0.35 + random(0.15);
		attack_stats.bullet_speed = bossbulletspeed * 1.35;
		attack_stats.bullet_life_span = 660;
		attack_stats.bullet_direction_angle = true;
		attack_stats.homing_speed = 1.5;
		attack_stats.boss_xoffset = -110;
		attack_stats.boss_yoffset = -50;
		
		if !instance_exists(tear_trail_tip_1) {
			attack_stats.bullet_type = "obj_increasing_homing_bullet_v2"
			tear_trail_tip_1 = scr_boss_shoot_v2();
		} else {
			attack_stats.follow_xoffset = -30 + random(60);
			attack_stats.follow_yoffset = -30 + random(60);
			attack_stats.bullet_target = tear_trail_tip_1
			tear_trail_tip_1 = scr_boss_shoot_v2();
		}
		
		attack_stats.bullet_direction = 330
		attack_stats.boss_xoffset = 110;
		if !instance_exists(tear_trail_tip_2) {
			attack_stats.bullet_type = "obj_increasing_homing_bullet_v2"
			tear_trail_tip_2 = scr_boss_shoot_v2();
		} else {
			attack_stats.follow_xoffset += -30 + random(60);
			attack_stats.follow_yoffset += -30 + random(60);
			attack_stats.bullet_target = tear_trail_tip_2
			tear_trail_tip_2 = scr_boss_shoot_v2();
		}
		
	}
	
	if active_attack = 5 {
	
		if pattern_count = pattern_count_max - 1 {
				
			attack_stats.bullet_type = "obj_converge_beam"
		    attack_stats.bullet_speed = 0;
			attack_stats.bullet_life_span = 360;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_direction_angle = 1;
			attack_stats.homing_speed = 0.8;
		    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
			attack_stats.bullet_part_color1 = make_color_rgb(0, 184, 255)
			attack_stats.bullet_part_color2 = make_color_rgb(127, 219, 255)
			
			var _dir = image_angle + 270;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 0.1)
			
			scr_boss_beam_shoot_v2(attack_stats)
		}
		
		if pattern_count mod 10 = 0 {
			scr_Boss_Stretch("Horizontal",0.1);	
		}
		if pattern_count mod 60 = 1 {
			attack_stats.bullet_sprite = "spr_Glowy_Blue_Shot"
			attack_stats.bullet_type = "obj_basic_bullet_v2"
			attack_stats.bullet_count = 6;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_speed = bossbulletspeed * 1.15;
			attack_stats.bullet_life_span = 300;
			attack_stats.boss_xoffset = -110;
			attack_stats.boss_yoffset = -50;
			var _dir = image_angle + 270;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 15)
			
			if pattern_count mod 120 = 1 {
				attack_stats.boss_xoffset = 110;	
			}
			repeat(3) {
				scr_boss_shoot_v2();
				attack_stats.bullet_speed += bossbulletspeed * 0.3;
			}
		}
	}
	
	if active_attack = 6 {
	
		if pattern_count = pattern_count_max || pattern_count = floor(pattern_count_max / 2) {
			scr_Boss_Stretch("Horizontal",0.6);
			
			attack_stats.bullet_type = "obj_mega_halo_ball"
			attack_stats.bullet_life_span = 480;
			attack_stats.bullet_size = 0.6;
		    attack_stats.bullet_sprite = "spr_Arcane_Ball";
			attack_stats.bullet_speed = bossbulletspeed * 0.33;
			
			var _dir = image_angle + 270;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 0.1)
			
			scr_boss_shoot_v2();
		}
		
		scr_Boss_Stretch("Horizontal",0.1);	
		if pattern_count < pattern_count_max {
			attack_stats.bullet_sprite = "spr_Glowy_Blue_Shot"
			attack_stats.bullet_type = "obj_basic_bullet_v2"
			attack_stats.bullet_count = 6;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_speed = bossbulletspeed * 1.15;
			attack_stats.bullet_life_span = 300;
			attack_stats.boss_xoffset = -110;
			attack_stats.boss_yoffset = -50;
			var _dir = image_angle + 270;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 15)
			
			if pattern_count mod 2 = 1 {
				attack_stats.boss_xoffset = 110;	
			}
			repeat(3) {
				scr_boss_shoot_v2();
				attack_stats.bullet_speed += bossbulletspeed * 0.3;
			}
		}
	}
	
	if active_attack = 7 {
	
		if pattern_count = pattern_count_max - 1 {
				
			attack_stats.bullet_type = "obj_converge_beam"
		    attack_stats.bullet_speed = 0;
			attack_stats.bullet_life_span = 450;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_direction_angle = 1;
			attack_stats.homing_speed = 0.5;
		    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
			attack_stats.bullet_part_color1 = make_color_rgb(0, 184, 255)
			attack_stats.bullet_part_color2 = make_color_rgb(127, 219, 255)
			attack_stats.boss_xoffset = -110;
			attack_stats.boss_yoffset = -50;
			
			var _dir = image_angle + 180;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 0.1)
			
			scr_boss_beam_shoot_v2(attack_stats)

			attack_stats.boss_xoffset = 110;	
			_dir = image_angle + 360;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 0.1)
			
			scr_boss_beam_shoot_v2(attack_stats)
		}
		
		if pattern_count mod 10 = 0 {
			scr_Boss_Stretch("Horizontal",0.1);	
		}
		if pattern_count mod 60 = 1 {
			var _dir = image_angle + 270;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 15)
			
			attack_stats.bullet_count = 1;
			attack_stats.follow_bullets = 3;
			attack_stats.bullet_life_span = 390;
			attack_stats.bullet_sprite = "spr_Arcane_Echo"
			attack_stats.bullet_type = "obj_homing_echo_bullet_v2"
			attack_stats.bullet_direction_angle = 1
			
			scr_boss_shoot_v2();
		}
	}
	
	if active_attack = 8 {
		scr_Boss_Stretch("Horizontal", 0.15);
		
		if pattern_count = pattern_count_max {
				
			attack_stats.bullet_type = "obj_converge_beam"
		    attack_stats.bullet_speed = 0;
			attack_stats.bullet_life_span = 600;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_direction_angle = 1;
			attack_stats.homing_speed = 0.8;
		    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
			attack_stats.bullet_part_color1 = make_color_rgb(200, 0, 50)
			attack_stats.bullet_part_color2 = make_color_rgb(255, 0, 150)
			
			var _dir = image_angle + 270;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 0.1)
			
			scr_boss_beam_shoot_v2()
			
		}
		
		attack_stats.bullet_direction = 210
		attack_stats.bullet_sprite = "spr_Blood_Tear"
		attack_stats.bullet_type = "obj_follow_the_leader_bullet_v2"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_size = 0.35 + random(0.15);
		attack_stats.bullet_speed = bossbulletspeed * 1.35;
		attack_stats.bullet_life_span = 660;
		attack_stats.bullet_direction_angle = true;
		attack_stats.homing_speed = 1.5;
		attack_stats.boss_xoffset = -110;
		attack_stats.boss_yoffset = -50;
		
		if !instance_exists(tear_trail_tip_1) {
			attack_stats.bullet_type = "obj_increasing_homing_bullet_v2"
			tear_trail_tip_1 = scr_boss_shoot_v2();
		} else {
			attack_stats.follow_xoffset = -30 + random(60);
			attack_stats.follow_yoffset = -30 + random(60);
			attack_stats.bullet_target = tear_trail_tip_1
			tear_trail_tip_1 = scr_boss_shoot_v2();
		}
		
		attack_stats.bullet_direction = 330
		attack_stats.boss_xoffset = 110;
		if !instance_exists(tear_trail_tip_2) {
			attack_stats.bullet_type = "obj_increasing_homing_bullet_v2"
			tear_trail_tip_2 = scr_boss_shoot_v2();
		} else {
			attack_stats.follow_xoffset += -30 + random(60);
			attack_stats.follow_yoffset += -30 + random(60);
			attack_stats.bullet_target = tear_trail_tip_2
			tear_trail_tip_2 = scr_boss_shoot_v2();
		}
		
	}
	
	if active_attack = 9 {
		
		if pattern_count = pattern_count_max {
			scr_Boss_Stretch("Vertical", 1);
			image_index = 3;
			
			minion_count = 1;
			minion_type = obj_demon_bat_mullet;
			minion_health = bossmaxhealth / 15;
			minion_speed = bossbulletspeed * (3)
		
			var _minion_shots = 3;
			if currentphase = 2 {
				_minion_shots = 4;	
			}
			var _dir = 270 - (30 * _minion_shots);
			repeat(_minion_shots) {
				minion_dir = _dir
				scr_Minion_Spawn()
				_dir += 60;
			}
		} else {
			attack_stats.bullet_sprite = "spr_Glowy_Enemy_Shot"
			attack_stats.bullet_type = "obj_basic_bullet_v2"
			attack_stats.bullet_count = 6;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_size = 0.5;
			attack_stats.bullet_speed = bossbulletspeed * 1.35;
			attack_stats.bullet_life_span = 300;
			attack_stats.boss_xoffset = -110;
			attack_stats.boss_yoffset = -50;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(270, 15)
			
			if pattern_count mod 2 = 1 {
				attack_stats.boss_xoffset = 110;	
			}
			repeat(2) {
				scr_boss_shoot_v2();
				attack_stats.bullet_speed += bossbulletspeed * 0.3;
			}
		}
	}
	
	// Maybe I should put this into a script
    pattern_count -= 1;
    pattern_cooldown += pattern_cooldown_max;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Post
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_duration <= 0 { 
    active_attack = 0;
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

if champ = 8 and active_attack = 1 {
	image_speed = 2;	
} else {
	image_speed = 1;	
}

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_soaring_sorrows_v2_holy_barrages, _hold_frame, 5, 5, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_soaring_sorrows_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
