/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	if currentphase = 1 {
		active_attack = 1;
	} else {
		active_attack = choose(2, 3, 4);
		active_attack = 2;
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Field Slash
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(20, 30, 1, 30, 30, 10);
		
		//scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 2 * bossmovespeed);
		pattern_direction = 60;
    }
	// Down Slash
	if active_attack = 3 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, 10);
		
		scr_Boss_Jump_Setup_v2(0, 2 * bossmovespeed, x, y);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		minion_count = 4;
		minion_type = obj_patch;
		minion_health = bossmaxhealth / 20;
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn();
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;	
		
		attack_stats.bullet_direction = pattern_direction;
		attack_stats.bullet_type = "obj_falling_2_way_shot_bullet"
		attack_stats.bullet_life_span = 90;
		attack_stats.bullet_lob_time = 58;
		attack_stats.bullet_speed = bossbulletspeed * (1.5 + random(0.6));
		
		scr_boss_shoot_v2();
		
		pattern_direction += 15;
	}

	if active_attack = 3 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(2);	
		
		if pattern_count = floor(pattern_count_max) {
			attack_stats.bullet_direction = pattern_direction;
		
			scr_boss_shoot_v2();
		}
	}
	
	if active_attack = 4 {
	
		minion_count = 3;
		minion_type = obj_patch;
		minion_health = bossmaxhealth / 20;
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn();
	
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
if currentphase = 1 {
	scr_Boss_Size_Lerp(0.15);
} else {
	scr_Boss_Size_Lerp_Dir(0.15);
}
// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_scarecrow_summon, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_scarecrow_field_slash, _hold_frame, 3, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_scarecrow_down_slash, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 4 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_scarecrow_summon_again, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	if currentphase = 1 {
		sprite_index = spr_scarecrow;
	}
	if currentphase = 2 {
		scr_Boss_Phase_Transition_Animation(2, spr_scarecrow_transition, spr_scarecrow_phase_2, 7)
	}
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
