/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 3 {
	direction = scr_Soul_Point() + 180;
	speed = lerp(speed, bossmovespeed * 0.05, 0.05);
} else if active_attack != 2 {
	var _diff = 90;
	var _dist = scr_Soul_Distance();
	_diff = 90 + ((300 - _dist) / 5)
	direction = scr_Soul_Point() + _diff;
	speed = lerp(speed, bossmovespeed * 1.5, 0.05);
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 1, 1, 2, 3);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 60, 30, 40);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(360, 30, 1, 60, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Round_To_Nearest(scr_Soul_Point() - 180, 180), 0, 5.9 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 10, 90, 30, 30);
		
		// Can set up the initial pattern direction
		patternDirection = scr_Soul_Point();
		//patternDirection = random(360;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_dark_bullet_v2"
		attack_stats.bullet_type = "obj_fright_bullet_v2"
		attack_stats.bullet_size = 0.625;
		attack_stats.bullet_count = 1;
		attack_stats.bullet_speed = (1.4 + random(0.6)) * bossbulletspeed
		attack_stats.homing_speed = 2;
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = spr_Soul_Big_Bit;
		attack_stats.bullet_part_area = 30;
		attack_stats.bullet_part_life = 15;
		attack_stats.bullet_part_color1 = make_color_rgb(0, 0, 0);
		attack_stats.bullet_part_color2 = make_color_rgb(0, 0, 0);
		attack_stats.bullet_part_frequency = 5;
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(60,30);
		
		speed = dash_speed;
        direction = dash_direction;
		
		y = scr_Converge(y, obj_Soul_Parent.perY, speed / 5);
		
		if x < x_bound || x > x_top_bound {
			dash_direction = scr_Round_To_Nearest(scr_Soul_Point(), 180)	
		}
		
	}
	
	 if active_attack = 3 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(patternDirection, 60)
		attack_stats.bullet_sprite = "spr_dark_bullet_v2"
		attack_stats.bullet_type = "obj_wave_bullet_v2"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_speed = (2 + random(0.9)) * bossbulletspeed
		attack_stats.wave_strength = 8;
		attack_stats.wave_time = 30;
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = spr_Soul_Big_Bit;
		attack_stats.bullet_part_area = 20;
		attack_stats.bullet_part_life = 15;
		attack_stats.bullet_part_color1 = make_color_rgb(0, 0, 0);
		attack_stats.bullet_part_color2 = make_color_rgb(0, 0, 0);
		attack_stats.bullet_part_frequency = 5;
		
		scr_boss_shoot_v2();
	
		patternDirection = scr_Angle_Converge(patternDirection, scr_Soul_Point(), 10)
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
if active_attack = 1 || active_attack = 3 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_spooked_spirit_v2_fear, _hold_frame, 3, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_spooked_spirit_v2_dash, _hold_frame, 2, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_spooked_spirit_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
