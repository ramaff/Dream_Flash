/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);


// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 and active_attack = 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 1, 1, 1, 2, 2, 3);
	//active_attack = 2;
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(40, 20, 1, 0, 0, 20);
		
		scr_Boss_Jump_Setup_v2(0, 2.5 * bossmovespeed, x, y);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(90, 60, 1, 0, 0, 40);
		
		scr_Boss_Jump_Setup_v2(0, 4 * bossmovespeed, x, y);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Hop leap attack setup example
	if active_attack = 3 {
		// 
		successive_hop_count = 6;
		scr_Boss_Attack_Time_Setup_v2(40, 60, 1, 0, 0, 10);
		
		var _mid_x = room_width / 2
		var _mid_y = room_height / 2
		
		scr_Boss_Jump_Setup_v2(0, 4 * bossmovespeed, x, y, _mid_x + scr_Wave(-100, 100, 1.5, 0), _mid_y + scr_Wave(-400, 400, 3, 0));
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }

}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(4,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(4);	
		
		if pattern_count = 1 {
			scr_Boss_Stretch("Horizontal", 0.5);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(direction, 30)
			attack_stats.bullet_count = 2;
			attack_stats.bullet_spread = 180;
		
			//scr_boss_shoot_v2();
		}
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(4,30);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(8);
		
		if pattern_count = 1 {
			scr_Boss_Stretch("Horizontal", 1);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(45, 5)
			attack_stats.bullet_count = 4;
			attack_stats.bullet_spread = 90;
			attack_stats.bullet_speed = bossbulletspeed * (2.75);
		
			scr_boss_shoot_v2();
			
			attack_stats.bullet_speed -= bossbulletspeed * 0.15;
			
			repeat(2) {
				attack_stats.bullet_speed -= bossbulletspeed * 0.3;
				attack_stats.bullet_direction += 5
				scr_boss_shoot_v2();
			
				attack_stats.bullet_speed -= bossbulletspeed * 0.3;
				attack_stats.bullet_direction -= 10
				scr_boss_shoot_v2();
				
				attack_stats.bullet_direction += 5
			}
		}
	}
	
	if active_attack = 3 {
	
		scr_Boss_Dash_Movement_v2(4,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(6);	
		
		if pattern_count = 1 {
			scr_Boss_Stretch("Horizontal", 1);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(270, 30)
			attack_stats.bullet_count = 2;
			attack_stats.bullet_spread = 180;
			attack_stats.bullet_speed = bossbulletspeed * (1.7 + random(0.4));
		
			scr_boss_shoot_v2();

			attack_stats.bullet_speed -= bossbulletspeed * 0.5;
			attack_stats.bullet_direction += 12.5
			scr_boss_shoot_v2();
			
			attack_stats.bullet_speed -= bossbulletspeed * 0.4;
			attack_stats.bullet_direction -= 25
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
	if active_attack = 3 and successive_hop_count > 0 {
		successive_hop_count--;
		scr_Boss_Attack_Time_Setup_v2(40, 10, 1, 0, 0, 10);
		
		var _mid_x = room_width / 2
		var _mid_y = room_height / 2
		
		scr_Boss_Jump_Setup_v2(0, 6 * bossmovespeed, x, y, _mid_x + scr_Wave(-60, 60, 1.5, 0), _mid_y + scr_Wave(-400, 400, 3, 0));
	} else {
		active_attack = 0;
	}
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp_Dir(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_pogo_pal_v2_quick_hop, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pogo_pal_v2_large_leap, _hold_frame, 3, 12, 40);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 and successive_hop_count = 6 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pogo_pal_v2_rapid_hops, _hold_frame, 3, 6, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pogo_pal_v2_rapid_hops, _hold_frame, 3, 6, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_pogo_pal_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
