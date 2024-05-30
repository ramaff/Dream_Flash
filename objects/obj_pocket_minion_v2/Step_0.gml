/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	if champ = 1 {
		active_attack = 1;	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 0, 60, 0, 30, 60);
		
		direction = scr_Soul_Point() - 90 + random(180);
		speed = bossmovespeed * (0.5 + random(0.5));
		
    }
	
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, 20);
		
		scr_Boss_Jump_Setup_v2(0, 0 * bossmovespeed, x, y);
    }
}

if active_attack != 1 {
	speed = 0;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

bullet_sprite = spr_Glowy_Purple_Shot;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {

	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(3);
		
		if pattern_count = floor(pattern_count_max / 2) {
			scr_Boss_Stretch("Vertical", 1)
			
			bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
			scr_Boss_Shoot();	
		}
	}
	
	// Maybe I should put this into a script
    pattern_count -= 1;
    pattern_cooldown += pattern_cooldown_max;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Post
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_duration <= 0 and active_attack_delay <= 0 { 
    active_attack = 0;
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	scr_Boss_Attack_Sprite_v2(spr_pocket_minion_steppers, -1, 0, 3, 0);
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_pocket_minion_shoot, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if active_attack = 0 {
	sprite_index = spr_pocket_minion;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
