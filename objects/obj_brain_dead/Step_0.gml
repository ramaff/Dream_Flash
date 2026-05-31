/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 0 {
	direction = scr_Soul_Point();
	speed = lerp(speed, bossmovespeed, 0.05);
} else if active_attack != 2 {
	direction = scr_Soul_Point();
	speed = lerp(speed, bossmovespeed * 0.15, 0.1);	
}

if active_attack = 1 and active_attack_delay <= 0 {
	scr_Boss_Wobble("Vertical", 5, 0.2, 0)	
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	
	// Rise from Graves
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(35, 50, 10, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Crazy Chase
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(330, 50, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 2.3 * bossmovespeed);
    }

}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.1);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_rising_red_bullet"
		attack_stats.bullet_type = "obj_rise_then_shoot_bullet"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_power = 0;
		
		var _port = scr_Teleport_In_Room_Generic(0);
		attack_stats.boss_xoffset = _port[0] - x
		attack_stats.boss_yoffset = _port[1] - y

		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(30,15);
		
		speed = lerp(speed, dash_speed, 0.1);
        direction = dash_direction + scr_Wave(-60, 60, 1, 0);
		dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(), 10)
		
		if pattern_count mod 40 = 10 {
			if pattern_count mod 80 = 10 {
				image_index = 3;	
			} 
			if pattern_count mod 80 = 50 {
				image_index = 7;	
			}
			speed = speed * 0.05;
			scr_Boss_Stretch("Vertical", 1);
		
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 150)
			attack_stats.bullet_speed = bossbulletspeed * (1.4 + random(0.6));
			attack_stats.bullet_sprite = "spr_red_bullet_v2"
			attack_stats.bullet_count = 7;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_direction_angle = 1
		
			scr_boss_shoot_v2();
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
if active_attack_delay > 0 || active_attack_duration < 20 {
	scr_Boss_Size_Lerp_Dir(0.15);
} else {
	scr_Boss_Size_Lerp(0.15)
}

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_brain_dead_rise_from_graves, _hold_frame, 3, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_brain_dead_crazy_chase, _hold_frame, 3, 10, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_brain_dead;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
