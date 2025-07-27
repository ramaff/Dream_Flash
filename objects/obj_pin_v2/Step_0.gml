/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(0, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

if active_attack = 0 and abs(boss_height) > 5 {
	var _diff = clamp((boss_height / active_attack_cooldown) - 5, 0, 30);
	boss_height	-= _diff
	y += _diff
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(20, 30, 1, 30, 10, 10);
		
		scr_Boss_Jump_Setup_v2(0, 4 * bossmovespeed, x, y);
    }
	
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
	
	if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(7);	
		
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
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_pin_v2_hop, _hold_frame, 2, 2, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_pin_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
