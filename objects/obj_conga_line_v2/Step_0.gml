/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if currentphase = 1 {
	
	if instance_exists(followtarget) {
		if point_distance(x, y, followtarget.x, followtarget.y) > 110 {
			direction = point_direction(x, y, followtarget.x, followtarget.y);
			speed = followtarget.speed;
		}
	} else {
		var _i = 0;
		for(_i = 0; _i < 4; _i++) {
			var _soul_dir = scr_Soul_Point();
			if abs(angle_difference(angles[_i], _soul_dir)) < 15 { 
				direction = angles[_i]
			}
		}
		if active_attack = 0 {
			speed = lerp(speed, bossmovespeed * 1.5, 0.05);
		} else {
			speed = lerp(speed, bossmovespeed * 0.05, 0.5);
		}
	}
	if instance_exists(follower) {
		follower.active_attack_cooldown = active_attack_cooldown
		follower.active_attack_delay = active_attack_delay
		follower.speed = speed;
		//follower.active_attack_duration = active_attack_duration
	}
} else {
	var original_target = followtarget
	if instance_exists(follower) {
		with(follower) {
			followtarget = original_target;	
		}
	}
	if active_attack = 0 {
		active_attack_cooldown = min(1, active_attack_cooldown);
		active_attack_delay = min(1, active_attack_delay);
		speed = lerp(speed, bossmovespeed * 0, 0.5);
	}
}


//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = currentphase
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(110, 40, 1, 180, 60, 20);
		
		scr_Boss_Jump_Setup_v2(0, 0, x, y);
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		speed = 0;
		scr_Boss_Attack_Time_Setup_v2(110, 40, 1, 1, 1, 220);
		
		scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 3 {
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
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = 0;
		
		scr_Jump_Movement_v2(3);	
		
		if pattern_count = 1 {
			image_index = 11;
			scr_Boss_Stretch("Horizontal", 1)
			attack_stats.bullet_direction = direction
			attack_stats.bullet_sprite = "spr_red_bullet_v2"
			attack_stats.bullet_count = 2;
			attack_stats.bullet_spread = 180;
		
			scr_boss_shoot_v2();
			
			attack_stats.bullet_speed += 0.5 * bossbulletspeed;
			
			scr_boss_shoot_v2();
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(15,15);
		
		speed = dash_speed;
		direction = dash_direction;
		
		scr_Jump_Movement_v2(3);	
		
		if pattern_count = 1 {
			image_index = 7;
			scr_Boss_Stretch("Horizontal", 1)
			attack_stats.bullet_direction = direction
			attack_stats.bullet_sprite = "spr_red_bullet_v2"
			attack_stats.bullet_count = 8;
			attack_stats.bullet_spread = 45;
		
			scr_boss_shoot_v2();
			
			speed = 0;
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
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_conga_v2_hippidy_hop, _hold_frame, 5, 5, 80);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_conga_v2_crack, _hold_frame, 4, 6, 220);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
	if pattern_count <= 0 and active_attack_duration <= 210 {
		if image_index < 8 {
			image_index = 8;	
		}
		scr_Boss_Wobble("Horizontal", 4, 0.4, 0)
		speed = 0;
	}
} else {
	sprite_index = spr_conga_v2_strut;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
