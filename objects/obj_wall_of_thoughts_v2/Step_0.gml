/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

var _soul_dir = scr_Soul_Point() 
if _soul_dir > 90 and _soul_dir < 270 {
	hspeed -= 0.025 * bossmovespeed
} else {
	hspeed += 0.025 * bossmovespeed	
}

speed = clamp(speed, -bossmovespeed, bossmovespeed)

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 4, 3, 3, 3);
	if scr_Minion_Count(currentphase) {
		active_attack = choose(1, 2, 4);
	}
	
	if champ = 1 || champ = 2 {
		if active_attack = 2 {
			active_attack = 5;	
		}
	}
	
	if champ = 2 {
		if active_attack = 4 {
			active_attack = 6;	
		}
	}
	active_attack = 6;
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 15;
		if champ = 1 {
			_attack_count = 20;
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, 15, 150, 30, 10);
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(10, 90, 20, 150, 30, 10);
		
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(currentphase, 90, 30, 150, 30, 40);
		
    }
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 45;
		if champ = 1 {
			_attack_count = 90;
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, 4, 150, 30, 10);
    }
	if active_attack = 5 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 90, 40, 150, 30, 10);
		pattern_direction = 210;
    }
	if active_attack = 6 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(180, 20, 1, 150, 30, 10);
		stored_x = x;
		stored_y = y;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

attack_stats.bullet_type = "obj_accel_bullet_v2";
attack_stats.bullet_sprite = "spr_Tear_Drop_Bullet";
attack_stats.bullet_speed = bossbulletspeed * (1.5 + random(0.75));
attack_stats.bullet_acceleration = bossbulletspeed * 0.005;
attack_stats.bullet_power = bosspower;
attack_stats.bullet_direction_angle = 1;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		if pattern_count mod 2 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}

		attack_stats.bullet_count = 4;
		attack_stats.bullet_spread = 35;
		attack_stats.boss_yoffset = 50;
		attack_stats.bullet_speed = bossbulletspeed * (1.9 + random(0.25));
		
		attack_stats.bullet_direction = 238 + random(4) + scr_Wave(-40, 40, 6, 0);
		attack_stats.boss_xoffset = -100;
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_direction = 298 + random(4) + scr_Wave(-40, 40, 6, 0);
		attack_stats.boss_xoffset = 100;
		
		scr_boss_shoot_v2();
		
		if champ = 1 and pattern_count mod 10 = 2 {
			
			attack_stats.bullet_count = 15;
			attack_stats.bullet_spread = 15;
			attack_stats.bullet_type = "obj_lob_bullet_v2";
			
			attack_stats.bullet_direction = 238 + random(4) + scr_Wave(-40, 40, 6, 0);
			attack_stats.boss_xoffset = -100;
		
			scr_boss_shoot_v2();
		
			attack_stats.bullet_direction = 298 + random(4) + scr_Wave(-40, 40, 6, 0);
			attack_stats.boss_xoffset = 100;
		
			scr_boss_shoot_v2();
		}
		
		if champ = 2 and pattern_count mod 10 = 2 {
			
			attack_stats.bullet_count = 8;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_type = "obj_zig_zag_bullet_v2";
			attack_stats.bullet_sprite = "spr_Lightning_Bullet";
			attack_stats.bullet_life_span = 240;
			attack_stats.bullet_speed = bossbulletspeed * 2.9;
			
			attack_stats.bullet_direction = 238 + random(4) + scr_Wave(-40, 40, 6, 0);
			attack_stats.boss_xoffset = -100;
		
			scr_boss_shoot_v2();
		
			attack_stats.bullet_direction = 298 + random(4) + scr_Wave(-40, 40, 6, 0);
			attack_stats.boss_xoffset = 100;
		
			scr_boss_shoot_v2();
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.1);
		
		attack_stats.bullet_type = "obj_Splash_Bounce_Bullet";
        attack_stats.bullet_sprite = "spr_Big_Glowy_Blue_Shot";
        attack_stats.bullet_speed = bossbulletspeed * (0.7 + random(1.6));
        attack_stats.bullet_power = bosspower * 2;
		
		attack_stats.boss_yoffset = 150;
		attack_stats.boss_xoffset = 10;
		
		attack_stats.bullet_direction = 240 + random(60);
		
		scr_boss_shoot_v2();
	}
	
	if active_attack = 3 {
	
		minion_count = 1;
		minion_type = obj_dream_cloud;
		minion_health = bossmaxhealth / 4;
		minion_dir = 270
		minion_speed = bossbulletspeed * (1.5 + random(0.5))
		minion_yy = 150;
		minion_knockdefense = 5
		
		//bosshealth -= 50;
		//scr_Damage_Indicator(0, 50, 1)
		//minion_movespeed = bossbulletspeed;

		scr_Minion_Spawn();
	
	}
	
	if active_attack = 4 {
		if pattern_count mod 3 = 0 {
			scr_Boss_Stretch("Vertical", 0.15);
		}
		//bullet_speed = bossbulletspeed * (0.5 + (pattern_count / 10) + random(0.5))
		attack_stats.bullet_speed += bossmovespeed * 0.75;
		attack_stats.boss_yoffset = 50;
		
		attack_stats.bullet_direction = 225 + random(30) + scr_Wave(-90, 90, 4, 0);
		attack_stats.boss_xoffset = -100;
		
		if champ = 1 {
			attack_stats.bullet_direction = 230 + random(20);
			attack_stats.bullet_speed = bossbulletspeed * (5.5 - (pattern_count / 20) + random(1))
			attack_stats.bullet_type = "obj_Rain_Drop_Bullet_Turn";
		}
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_direction += 60;
		attack_stats.boss_xoffset = 100;
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;	
	}
	if active_attack = 5 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		attack_stats.bullet_type = "obj_Splash_Bullet";
        attack_stats.bullet_sprite = "spr_Rain_Ball";
		
        attack_stats.bullet_speed = bossbulletspeed * (2.75 - (pattern_count / 3))
        attack_stats.bullet_power = bosspower * 2;
		
		attack_stats.boss_yoffset = 150;
		attack_stats.boss_xoffset = 10;
		
		attack_stats.bullet_bounce_Y = 82;
		
		attack_stats.bullet_direction = pattern_direction
		
		attack_stats.bullet_life_span = 120;
		
		if champ = 2 {
			attack_stats.bullet_type = "obj_thunder_bullet_v2";
			attack_stats.bullet_sprite = "spr_Thunder_Ball";
			attack_stats.bullet_speed -= bossbulletspeed * 0.5
		}
		
		attack_stats.bullet_bounce_speed = 0;
		attack_stats.bullet_bounce_gravity = 0.1;
		attack_stats.bullet_life_span = sqrt((2 * (150)) / attack_stats.bullet_bounce_gravity);
		attack_stats.bullet_lob_time = attack_stats.bullet_life_span - 2;
		attack_stats.bullet_bounce_height = 150;
		
		if champ = 2 {
			attack_stats.bullet_life_span = attack_stats.bullet_life_span * 3.4;
		}
		
		scr_boss_shoot_v2();
		
		pattern_direction += 60;
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 6 {
		
		attack_stats.boss_yoffset = 50;
	
		if pattern_count = pattern_count_max {
				
			attack_stats.bullet_type = "obj_beam_bullet_v3"
		    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
		    attack_stats.bullet_speed = 0;
		    attack_stats.bullet_size = 0.625;
		    attack_stats.bullet_count = 2;
		    attack_stats.bullet_spread = 15;
			attack_stats.bullet_power = 0
			attack_stats.bullet_part_color1 = make_color_rgb(255, 212, 0)
			attack_stats.bullet_part_color2 = make_color_rgb(255, 255, 127)
			attack_stats.bullet_direction = 255;
			
			if image_index > 3 and pattern_count_max - pattern_count < 30 {
				image_index = 3;	
			}
	
			var dir = -(attack_stats.bullet_spread * (attack_stats.bullet_count - 1) / 2);
				
			attack_stats.boss_xoffset = -100;
			
			scr_boss_beam_shoot_v2(attack_stats, false, true)
			
			attack_stats.boss_xoffset = 100;
			attack_stats.bullet_direction = 285;
			
			scr_boss_beam_shoot_v2(attack_stats, false, true)
				
		} 
			
		if pattern_count = 60 {
			attack_stats.bullet_count = 8;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_type = "obj_zig_zag_bullet_v2";
			attack_stats.bullet_sprite = "spr_Lightning_Bullet";
			attack_stats.bullet_life_span = 240;
			attack_stats.bullet_speed = bossbulletspeed * 2.9;
			
			attack_stats.bullet_direction = 238 + random(4) + scr_Wave(-40, 40, 6, 0);
			attack_stats.boss_xoffset = -100;
		
			scr_boss_shoot_v2();
		
			attack_stats.bullet_direction = 298 + random(4) + scr_Wave(-40, 40, 6, 0);
			attack_stats.boss_xoffset = 100;
		
			scr_boss_shoot_v2();
		}
			
		//var beamstart = bossPatternCountMax - bossPatternCount;
			
		//scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 18);
	
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

// Handles boss attack sprite animation
if active_attack = 1 || active_attack = 4 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_wall_of_thoughts_v2_cry_stream, _hold_frame, 4, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 6 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_wall_of_thoughts_v2_cry_stream, _hold_frame, 4, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 || active_attack = 3 || active_attack = 5 {
	if image_index >= 2 and image_index < 7 {
		scr_Soul_Push_Pull(1 + (image_index / 4))
	}
	var _hold_frame = 7;
	scr_Boss_Attack_Sprite_v2(spr_wall_of_thoughts_v2_suck_shoot, _hold_frame, 8, 8, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_wall_of_thoughts_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
