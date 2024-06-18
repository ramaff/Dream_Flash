/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

if active_attack = 0 {
	speed = lerp(speed, bossmovespeed, 0.1)
	direction = scr_Soul_Point()
} else if active_attack != 2 {
	speed = lerp(speed, bossmovespeed * 0.1, 0.1)
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
		scr_Boss_Attack_Time_Setup_v2(16, 40, 10, 120, 120, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
    }
	
	// Hop leap attack setup example
	if active_attack = 2 {
		scr_Boss_Attack_Time_Setup_v2(120, 30, 1, 120, 120, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 3 * bossmovespeed, 7 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

bullet_sprite = spr_Water_Drop_Bullet;
bullet_type = obj_Rain_Drop_Bullet;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		
		bullet_direction = pattern_direction + (4 * (pattern_count mod 2)) - 2
		bullet_direction += 2 - random(4);
		
		scr_Boss_Shoot();	

	}
	
	if active_attack = 3 {
		
		bullet_direction = pattern_direction + (4 * (pattern_count mod 2)) - 2
		bullet_direction += 1 - random(2);
		
		bullet_spread = 90;
		bullet_count = 4
		
		scr_Boss_Shoot();	

	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count = 1 {
			active_attack = 3
			scr_Boss_Attack_Time_Setup_v2(12, 10, 10, 120, 120, 10);
			pattern_direction = random(360);
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
if sprite_index = spr_storm_cloud_minion_mouth_mood {
	scr_Boss_Size_Lerp_Dir(0.15, false);
} else {
	scr_Boss_Size_Lerp(0.15)
}

// Handles boss attack sprite animation
if active_attack = 1 || active_attack = 3 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_storm_cloud_minion_eye_mood, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_storm_cloud_minion_mouth_mood, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_storm_cloud_minion;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
