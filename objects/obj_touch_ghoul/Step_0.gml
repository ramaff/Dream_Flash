/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

direction = scr_Soul_Point()

if active_attack = 0 {
	speed = lerp(speed, bossmovespeed, 0.1);
} else {
	speed = lerp(speed, bossmovespeed * 0.25, 0.05);	
}

tar_angle = (tar_angle + 1.5) mod 360

if instance_exists(hand_1) {
	hand_1.tar_angle = tar_angle;	
}
if instance_exists(hand_2) {
	hand_2.tar_angle = tar_angle + 120;
}
if instance_exists(hand_3) {
	hand_3.tar_angle = tar_angle + 240;	
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	active_attack = 1;
	
	if !instance_exists(hand_1) || !instance_exists(hand_2) || !instance_exists(hand_3) {
		active_attack = 2;	
	}
	
    if active_attack = 1 {
		var _hands_attack = choose(1, 2, 3);
		var _pattern_count = 120;
		var _added_dur = 10;
		if _hands_attack = 1 {
			_pattern_count = 120;
			_added_dur = 40;
		}
		if _hands_attack = 2 {
			_pattern_count = 240;	
		}
		var _dir = scr_Soul_Point()
		
		scr_Boss_Attack_Time_Setup_v2(_pattern_count, 60, 1, 210, 30, 10);
		
		with(hand_1) {
			active_attack = _hands_attack;
			scr_Boss_Attack_Time_Setup_v2(_pattern_count, 60, 1, 999, 30, _added_dur);
			
			if active_attack = 1 {
				scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);	
			} else if active_attack != 2 {
				scr_Boss_Dash_Setup_v2(_dir, 0, 5 * bossmovespeed);
			}
		}
		with(hand_2) {
			active_attack = _hands_attack;
			scr_Boss_Attack_Time_Setup_v2(_pattern_count, 90, 1, 999, 30, _added_dur);
			
			if active_attack = 1 {
				scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);	
			} else if active_attack != 2 {
				scr_Boss_Dash_Setup_v2(_dir, 0, 5 * bossmovespeed);
			}
		}
		with(hand_3) {
			active_attack = _hands_attack;
			scr_Boss_Attack_Time_Setup_v2(_pattern_count, 120, 1, 999, 30, _added_dur);
			
			if active_attack = 1 {
				scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);	
			} else if active_attack != 2 {
				scr_Boss_Dash_Setup_v2(_dir, 0, 5 * bossmovespeed);
			}
		}
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 60, 15, 40);
    }

}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Wobble("Vertical", 1, 0.5, 0);
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
	
		minion_count = 1;
		minion_type = obj_touch_hand;
		minion_health = 150;
		minion_defense = 0;
		
		var _mins = scr_Minion_Spawn();

		if !instance_exists(hand_1) {
			hand_1 = _mins[0];
		}
		if !instance_exists(hand_2) {
			hand_2 = _mins[0];
		}
		if !instance_exists(hand_3) {
			hand_3 = _mins[0];
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
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_touch_ghoul_shoot, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_touch_ghoul_hand_stuff, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_touch_ghoul;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
