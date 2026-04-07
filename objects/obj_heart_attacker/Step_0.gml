/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

if active_attack = 0 {
	direction = scr_Soul_Point() + 180;
	speed = lerp(speed, bossmovespeed, 0.1);
} else {
	direction = scr_Soul_Point() + 180;
	speed = lerp(speed, bossmovespeed * 0.15, 0.05);	
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = 1
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 40, 1, 240, 90, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, 10);
		
		scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

attack_stats.bullet_speed = bossbulletspeed * (0.4 + random(0.15))
attack_stats.bullet_life_span = 420;
attack_stats.bullet_type = "obj_speed_up_down_bullet_v2";

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 120)
		attack_stats.bullet_count = 3;
		attack_stats.bullet_spread = 10;
		
		scr_boss_shoot_v2();
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
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_heart_attacker_v2_attack, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_heart_attacker_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
