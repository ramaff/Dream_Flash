/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 1 {
	speed = lerp(speed, bossmovespeed * 0.05, 0.05);
	direction = pattern_direction + 180;
	
	if active_attack_delay <= 0 {
		scr_suck_all_into_angle(scr_circular_suck, 0.8 / speed, x, y, pattern_direction)
		if pattern_direction = 180 {
			x -= speed * 5;	
		} else {
			x += speed * 5;	
		}
		//scr_Enemy_Bullet_Orbit_Suck(0.5 / speed);	
	}
} else if active_attack = 2 and active_attack_delay > 0 {
	speed = lerp(speed, bossmovespeed, 0.05);
	direction = scr_Soul_Point() + 180
} else {
	speed = lerp(speed, bossmovespeed, 0.1);
	direction = scr_Soul_Point()
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(10, 50, 30, 180, 60, 10);
		
		pattern_direction = 0;
		if obj_Soul_Parent.perX > x { 
			pattern_direction = 180;	
		}
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(40, 30, 1, 0, 0, 10);
		scr_Boss_Dash_Setup_v2(scr_Soul_Point() - 30, 0, 4 * bossmovespeed);
		bites = 2;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.5);
		
		var _offset = -45;
		if pattern_count mod 2 = 0 {
			_offset = 45	
		}
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction + _offset, 30)
		attack_stats.bullet_direction = scr_Angle_Converge(attack_stats.bullet_direction, 90, 30)
		
		attack_stats.bullet_sprite = "spr_red_bullet_v2"
		attack_stats.bullet_type = "obj_friction_bullet_v2"
		attack_stats.bullet_count = 5;
		attack_stats.bullet_spread = 20;
		attack_stats.bullet_direction_angle = 1
		
		attack_stats.boss_xoffset = 60;
		attack_stats.boss_yoffset = -50;
		if pattern_direction = 180 {
			attack_stats.boss_xoffset = -60;
		}
		attack_stats.bullet_speed = bossbulletspeed * (5);
		attack_stats.bullet_min_speed = attack_stats.bullet_speed * 0.4;
		attack_stats.bullet_friction = attack_stats.bullet_speed / 30;
		
		image_index = 6
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(30,2);
		
		speed = dash_speed;
        direction = dash_direction;
	
		if pattern_count = 1 {
			
			if image_index > 7 {
				image_index = 11;	
			}
			
			if image_index < 7 {
				image_index = 7	
			}
		
			var _im = image_index;
			
			scr_Boss_Stretch("Horizontal", 0.8);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
			attack_stats.bullet_sprite = "spr_red_bullet_v2"
			attack_stats.bullet_count = 8;
			attack_stats.bullet_spread = 45;
			attack_stats.bullet_direction_angle = 1
		
			scr_boss_shoot_v2();
			
			if bites > 0 {
				if bites = 2 {
					scr_Boss_Attack_Time_Setup_v2(40, 0, 1, 120, 40, 10);
					scr_Boss_Dash_Setup_v2(dash_direction + 60, 0, 4 * bossmovespeed);
				}
				if bites = 1 {
					scr_Boss_Attack_Time_Setup_v2(50, 0, 1, 120, 40, 10);
					scr_Boss_Dash_Setup_v2(dash_direction - 60, 0, 4 * bossmovespeed);
				}
				bites--;
				image_index = _im
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
scr_Boss_Size_Lerp_Dir(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_taste_sense_ultra_suck, _hold_frame, 4, 6, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_taste_sense_bites, _hold_frame, 4, 11, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_taste_sense;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
