/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	active_attack = 1;
	
	if scr_Minion_Count() {
		active_attack = 3
	}
	
    if active_attack = 1 {
		image_index = 1;
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(40, 0, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point() + 180, 0, 2 * bossmovespeed);
    }
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(40, 30, 1, 120, 30, 20);
		
		scr_Boss_Jump_Setup_v2(0, 5 * bossmovespeed, x, y);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(360, 30, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 4.5 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(15,15);
		
		mirror = true
		speed = dash_speed + 0.1;
        direction = dash_direction;
		
		if pattern_count = 1 {
			active_attack = 2;
			
			scr_Boss_Attack_Time_Setup_v2(40, 0, 1, 120, 30, 50);
		
			scr_Boss_Jump_Setup_v2(0, 5.5 * bossmovespeed, x, y);
			
			hops = 3;
		}
		
	}
	
	if active_attack = 2 {
		//if speed > 1 {
			mirror = false
		//}
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(6);	
		
		if pattern_count = 1 and hops > 0 {
			hops--;
			
			dash_speed = dash_speed * 0.5
			pattern_count_max = round(pattern_count_max * 0.5)
			pattern_count = pattern_count_max
			
			if hops = 2 {
				attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(dash_direction, 30)
		
				attack_stats.bullet_count = 4;
				attack_stats.bullet_speed = bossbulletspeed * 0.75;
				attack_stats.bullet_spread = 60;
				scr_boss_shoot_v2();
			
				attack_stats.bullet_count = 3;
				attack_stats.bullet_speed = bossbulletspeed * 1.5;
				scr_boss_shoot_v2();
			
				attack_stats.bullet_count = 2;
				attack_stats.bullet_speed = bossbulletspeed * 2.25;
				scr_boss_shoot_v2();
			
				attack_stats.bullet_count = 1;
				attack_stats.bullet_speed = bossbulletspeed * 3;
				scr_boss_shoot_v2();
			
				scr_Screen_Shake(5, 5)
			
				minion_count = 3;
				minion_type = obj_pin_v2
				minion_health = 18;
				minion_height = 800 + random(200);
				minion_attack_cooldown = 90;
				//minion_spawn_animation = spr_pocket_minion_spawn
				//minion_yy = boss_height;

				scr_Minion_Spawn();
			}
		}
	}
	
	if active_attack = 3 {
	
		scr_Boss_Dash_Movement_v2(60, 30);
		
		speed = dash_speed;
        direction = dash_direction;
	
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
if mirror and active_attack_cooldown > 0 and speed < 0.5 {
	speed = 0.5;
    direction = dash_direction;
}

// Go back to normal default size
scr_Boss_Size_Lerp_Dir(0.15, mirror);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_gutter_ball_v2_jump_prep, _hold_frame, 3, 3, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_gutter_ball_v2_jump, _hold_frame, 2, 2, 0);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_gutter_ball_v2_roll, _hold_frame, 1, 6, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_gutter_ball_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
