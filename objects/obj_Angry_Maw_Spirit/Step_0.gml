/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

boss_height = max(40, boss_height);
// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

//speed = speed * 0.99;

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		scr_Boss_Attack_Time_Setup_v2(120, 30, 1, 30, 30, 30);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point() - 10 + random(20), 0, 1.75 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(20, 20);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count = 1 {
			bullet_direction = scr_Boss_Bullet_Direction_Formula(direction, 10)
			bullet_count = 4;
			bullet_spread = 90;
		
			scr_Boss_Shoot();
			image_index = 2;
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
scr_Boss_Size_Lerp_Dir(0.15, true);

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_red_spirit_chomp, _hold_frame, 2, 2, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_red_spirit;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
