/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

direction = scr_Soul_Point()

if active_attack = 0 {
	speed = lerp(speed, bossmovespeed * 1.75, 0.1)
} else if (active_attack = 4 || active_attack = 8) and pattern_count < pattern_count_max {
	speed = lerp(speed, -bossmovespeed * 3, 0.03)	
	direction = pattern_direction;
} else if active_attack = 5 and active_attack_delay > 0 {
	speed = lerp(speed, -bossmovespeed * 2, 0.1)	
	direction = dash_direction
} else {
	speed = lerp(speed, bossmovespeed * 0.75, 0.1)
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	if currentphase = 1 {
		active_attack = choose(1, 2, 3);
	} else {
		active_attack = choose(4, 5, 3);
	}
	if scr_Minion_Count(2) {
		if currentphase = 1 {
			active_attack = choose(1, 2);
		} else {
			active_attack = choose(4, 5);
		}
	}
	
	if champ = 1 and active_attack = 1 {
		active_attack = 7;
	}
	if champ = 2 and active_attack = 4 {
		active_attack = 8;	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 4;
		var _attack_spacing = 30;
		if champ = 2 {
			_attack_spacing = 45;	
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, _attack_spacing, 180, 30, 20);
		
		pattern_direction = random(360);
    }
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 10;
		var _attack_spacing = 10;
		if champ = 1 {
			_attack_count = 15;	
		}
		if champ = 2 {
			var _attack_count = 12;
			_attack_spacing = 20;	
		}
		if champ = 3 {
			_attack_count = 30;
			_attack_spacing = 15;
		}
		
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, _attack_spacing, 180, 30, 20);
		
		pattern_direction = random(360);
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(2, 50, 30, 180, 30, 10);
		
    }
	// Targeted wave shots
	if active_attack = 4 {
		var _attack_count = 13;
		var _attack_spacing = 10;
		if champ = 1 {
			_attack_count = 25;	
		}
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, _attack_spacing, 180, 30, 20);
		
		pattern_direction = scr_Soul_Point()
    }
	// Dash into mega lightning
	if active_attack = 5 {
		// 
		scr_Boss_Attack_Time_Setup_v2(80, 70, 1, 30, 30, 10);
		
		//scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 8.5 * bossmovespeed);
    }
	
	if active_attack = 7 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 30;
		var _attack_spacing = 15;
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, _attack_spacing, 180, 30, 20);
		
		pattern_direction = random(360);
    }
	// Targeted wave shots
	if active_attack = 8 {
		var _attack_count = 6;
		var _attack_spacing = 50;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, _attack_spacing, 180, 30, 20);
		
		pattern_direction = scr_Soul_Point()
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		attack_stats.bullet_life_span = 80;
        attack_stats.bullet_type = "obj_splash_bullet_reserve_v2";
        attack_stats.bullet_sprite = "spr_Rain_Ball";
        if champ = 2 {
            attack_stats.bullet_type = "obj_thunder_bullet_v2";
            attack_stats.bullet_sprite = "spr_Thunder_Ball";
        }
        attack_stats.bullet_count = 2;
		attack_stats.bullet_spread = 360 / attack_stats.bullet_count;
		attack_stats.bullet_direction = random(360);
        attack_stats.bullet_speed = bossbulletspeed * (2.3 + random(0.1));
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 2)
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    pattern_direction += 30;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 0.5)
        attack_stats.bullet_type = "obj_spin_bullet_v2";
		attack_stats.angular_velocity = 1;
        attack_stats.bullet_sprite = "spr_Water_Drop_Bullet";
        attack_stats.bullet_speed = bossbulletspeed * 2.85;
        attack_stats.bullet_count = 10;
		attack_stats.bullet_spread = 36;
		attack_stats.bullet_direction_angle = 1;
		if champ = 1 {
			attack_stats.bullet_count = 8;
			attack_stats.bullet_spread = 45;
		}
		attack_stats.bullet_life_span = 360;
		
		attack_stats.bullet_direction += (3 * (pattern_count mod 2)) - 1.5;
		
		scr_boss_shoot_v2();
		
		if champ = 1 {
			attack_stats.bullet_type = "obj_spin_bullet_v2";
			attack_stats.angular_velocity = -1;
			scr_boss_shoot_v2();
		}
		
		if champ = 2 and pattern_count = pattern_count_max {
				
			attack_stats.bullet_type = "obj_beam_bullet_v3"
		    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
			attack_stats.bullet_direction_angle = 1;
			attack_stats.angular_velocity = 0;
			attack_stats.bullet_part_color1 = make_color_rgb(255, 212, 0)
			attack_stats.bullet_part_color2 = make_color_rgb(255, 255, 127)
		    attack_stats.bullet_speed = 0;
		    attack_stats.bullet_size = 0.625;
		    attack_stats.bullet_count = 4;
		    attack_stats.bullet_spread = 90;
			attack_stats.bullet_power = 0
			attack_stats.bullet_life_span = 240;
			if image_index > 3 and pattern_count_max - pattern_count < 30 {
				image_index = 3;	
			}
				
			scr_boss_beam_shoot_v2(attack_stats, false, true)	
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 3 {
		
		scr_Boss_Stretch("Vertical", 0.35);
	
		minion_count = 1;
		minion_type = obj_dark_storm_minion;
		minion_health = bossmaxhealth / 9;
		
		minion_xx = 100;
		minion_yy = 50;
		
		if hspeed < 0 {
			minion_xx = -100;	
		}

		scr_Minion_Spawn();
	
	}
	
	if active_attack = 4 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		attack_stats.bullet_type = "obj_wave_bullet_v2";
        attack_stats.bullet_sprite = "spr_Water_Drop_Bullet";
		attack_stats.bullet_direction_angle = 1;
		attack_stats.wave_strength = 5;
		attack_stats.wave_time = 30;
        attack_stats.bullet_speed = bossbulletspeed * 2.5;
        attack_stats.bullet_count = 8;
        attack_stats.bullet_spread = 255 / attack_stats.bullet_count;
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 0.5)
		
		scr_boss_shoot_v2();	
		
		if champ = 1 and pattern_count mod 2 = 0 {
			attack_stats.bullet_count = 1;
			attack_stats.bullet_type = "obj_splash_bounce_bullet_v2";
	        attack_stats.bullet_sprite = "spr_Big_Glowy_Blue_Shot";
	        attack_stats.bullet_speed = bossbulletspeed * (1.75 + random(0.85));
	        attack_stats.bullet_power = bosspower * 2;
		
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 60)
		
			scr_boss_shoot_v2();
		}
		
		//x -= lengthdir_x(20, bullet_direction)
		//y -= lengthdir_y(20, bullet_direction)
	}
	
	if active_attack = 6 {
	
		if pattern_count = pattern_count_max - 1 {
				
			attack_stats.bullet_type = "obj_beam_bullet_v3"
		    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
			attack_stats.bullet_direction_angle = 1;
			attack_stats.angular_velocity = 0;
			attack_stats.bullet_part_color1 = make_color_rgb(255, 212, 0)
			attack_stats.bullet_part_color2 = make_color_rgb(255, 255, 127)
		    attack_stats.bullet_speed = 0;
		    attack_stats.bullet_size = 0.625;
		    attack_stats.bullet_count = 4;
		    attack_stats.bullet_spread = 90;
			attack_stats.bullet_power = 0
			attack_stats.bullet_life_span = 240;
			if image_index > 3 and pattern_count_max - pattern_count < 30 {
				image_index = 3;	
			}
				
			scr_boss_beam_shoot_v2(attack_stats, false, true)
				
		}
			
		if pattern_count mod 30 = 0 {
			scr_Boss_Stretch("Vertical", 0.25);
			
			if champ = 1 {
				attack_stats.bullet_type = "obj_splash_bounce_bullet_v2";
		        attack_stats.bullet_sprite = "spr_Big_Glowy_Blue_Shot";
		        attack_stats.bullet_speed = bossbulletspeed * (1.75 + random(0.85));
		        attack_stats.bullet_power = bosspower * 2;
				attack_stats.bullet_count = 2;
				attack_stats.bullet_spread = 180;
		
				attack_stats.bullet_direction = random(360);
		
				scr_boss_shoot_v2();
			} else {
				attack_stats.bullet_count = 8;
				attack_stats.bullet_spread = 45;
				if champ = 2 {
					attack_stats.bullet_count = 6;
					attack_stats.bullet_spread = 60;
				}
				attack_stats.bullet_direction = 0;
				if pattern_count mod 90 = 0 {
					attack_stats.bullet_direction += (attack_stats.bullet_spread / 3);	
				}
				if pattern_count mod 90 = 30 {
					attack_stats.bullet_direction -= (attack_stats.bullet_spread / 3)	
				}
				attack_stats.bullet_type = "obj_zig_zag_bullet_v2";
				attack_stats.bullet_direction_angle = 1;
				attack_stats.bullet_sprite = "spr_Lightning_Bullet";
				attack_stats.bullet_life_span = 240;
				attack_stats.bullet_speed = bossbulletspeed * 2.9;
		
				scr_boss_shoot_v2();
			}
			
			if champ = 2 {
				attack_stats.bullet_type = "obj_beam_bullet_v3"
			    attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
				attack_stats.bullet_direction_angle = 1;
				attack_stats.angular_velocity = 0;
				attack_stats.bullet_part_color1 = make_color_rgb(255, 212, 0)
				attack_stats.bullet_part_color2 = make_color_rgb(255, 255, 127)
			    attack_stats.bullet_speed = 0;
			    attack_stats.bullet_size = 0.625;
			    attack_stats.bullet_count = 2;
			    attack_stats.bullet_spread = 180;
				attack_stats.bullet_power = 0
				attack_stats.bullet_life_span = 120;
				if image_index > 3 and pattern_count_max - pattern_count < 30 {
					image_index = 3;	
				}
				
				scr_boss_beam_shoot_v2(attack_stats, false, true)
			}
		}
	
	}
	
	if active_attack = 5 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count = 1 {
			
			scr_Boss_Stretch("Horizontal", 0.75);
			
			if champ = 1 {
				attack_stats.bullet_count = 6;
				attack_stats.bullet_spread = 60;
				attack_stats.bullet_type = "obj_splash_bounce_bullet_v2";
		        attack_stats.bullet_sprite = "spr_Big_Glowy_Blue_Shot";
		        attack_stats.bullet_speed = bossbulletspeed * (2.15);
		        attack_stats.bullet_power = bosspower * 2;
				
				repeat(2) {
					attack_stats.bullet_direction += 30;
					scr_boss_shoot_v2();
					attack_stats.bullet_speed += bossbulletspeed * 0.95;
				}
			} else {
			
				attack_stats.bullet_count = 8;
				attack_stats.bullet_spread = 45;
				attack_stats.bullet_direction = 0;
				attack_stats.bullet_type = "obj_zig_zag_bullet_v2";
				attack_stats.bullet_sprite = "spr_Lightning_Bullet";
				attack_stats.bullet_direction_angle = 1;

				attack_stats.bullet_life_span = 240;
				attack_stats.bullet_speed = bossbulletspeed * 2.5;
		
				repeat(3) {
					attack_stats.bullet_direction += 22.5;
					scr_boss_shoot_v2();
					attack_stats.bullet_speed += bossbulletspeed * 0.7;
				}
			}
		}
	}
	
	if active_attack = 7 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		attack_stats.bullet_sprite = "spr_Water_Drop_Bullet";
		attack_stats.bullet_acceleration = bossbulletspeed * 0.005;
		attack_stats.bullet_type = "obj_basic_bullet_v2";
		attack_stats.bullet_direction_angle = 1;
	    attack_stats.bullet_count = 2;
		attack_stats.bullet_spread = 360 / attack_stats.bullet_count;
	    attack_stats.bullet_speed = bossbulletspeed * 1.85;
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 0.5)
		
		repeat(2) {
			scr_boss_shoot_v2();
			attack_stats.bullet_speed = bossbulletspeed * 1.4;
			attack_stats.bullet_direction += 9;
		
		}
		
		if pattern_count mod 6 = 0 {
			attack_stats.bullet_life_span = 80;
	        attack_stats.bullet_type = "obj_splash_bullet_reserve_v2";
	        attack_stats.bullet_sprite = "spr_Rain_Ball";
	        attack_stats.bullet_count = 2;
			attack_stats.bullet_spread = 360 / attack_stats.bullet_count;
	        attack_stats.bullet_speed = bossbulletspeed * (2.3 + random(0.1));
		
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction + 90, 2)
		
			scr_boss_shoot_v2();
		}
		
		pattern_direction += 18;
	}
	
	if active_attack = 8 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		attack_stats.bullet_type = "obj_wave_bullet_v2";
        attack_stats.bullet_sprite = "spr_Water_Drop_Bullet";
		attack_stats.bullet_direction_angle = 1;
		attack_stats.wave_strength = 5;
		attack_stats.wave_time = 30;
        attack_stats.bullet_speed = bossbulletspeed * 2.5;
        attack_stats.bullet_count = 16;
        attack_stats.bullet_spread = 270 / attack_stats.bullet_count;
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 0.5)
		
		scr_boss_shoot_v2();
		
		if pattern_count = pattern_count_max {
				
			attack_stats.bullet_type = "obj_beam_bullet_v3"
			attack_stats.bullet_sprite = "spr_Boss_Beam_Segment";
			attack_stats.bullet_direction_angle = 1;
			attack_stats.angular_velocity = 0;
			attack_stats.bullet_part_color1 = make_color_rgb(255, 212, 0)
			attack_stats.bullet_part_color2 = make_color_rgb(255, 255, 127)
			attack_stats.bullet_speed = 0;
			attack_stats.bullet_size = 0.625;
		    attack_stats.bullet_count = 4;
		    attack_stats.bullet_spread = 60;
			attack_stats.bullet_power = 0
			attack_stats.bullet_life_span = 240;
			if image_index > 3 and pattern_count_max - pattern_count < 30 {
				image_index = 3;	
			}
				
			scr_boss_beam_shoot_v2(attack_stats, false, true)
				
		}
		
		//x -= lengthdir_x(20, bullet_direction)
		//y -= lengthdir_y(20, bullet_direction)
	}
	
	// Maybe I should put this into a script
    pattern_count -= 1;
    pattern_cooldown += pattern_cooldown_max;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Post
//////////////////////////////////////////////////////////////////////////////////////////


if active_attack_duration <= 0 { 
	if active_attack = 5 {
		active_attack = 6
		var _attack_count = 240;
		if champ = 2 {
			_attack_count = 480;			
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 40, 1, 120, 120, 10);
		pattern_direction = random(360);
			
	} else {
		active_attack = 0;
	}
}

/// Boss Sprite Code

image_angle = scr_Wave(-10, 20, 3, 0)

// Go back to normal default size
if sprite_index = spr_dark_storm_cloud_mouth_mood || sprite_index = spr_dark_storm_cloud_mouth_into_eye_mood {
	scr_Boss_Size_Lerp_Dir(0.15, true);
} else {
	scr_Boss_Size_Lerp(0.15)
}



// Handles boss attack sprite animation
if active_attack = 3 || active_attack = 5 {
	var _hold_frame = 2;
	var _end_time = 20;
	if active_attack = 5 {
		_end_time = 10;	
	}
	scr_Boss_Attack_Sprite_v2(spr_dark_storm_cloud_mouth_mood, _hold_frame, 3, 3, _end_time);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 1 || active_attack = 2 || active_attack = 4 || active_attack = 8 || active_attack = 7 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_dark_storm_cloud_eye_mood, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 6 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_dark_storm_cloud_mouth_into_eye_mood, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_dark_storm_cloud;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
