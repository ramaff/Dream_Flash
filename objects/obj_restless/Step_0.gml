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
	active_attack = choose(1, 2);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(6, 50, 30, 120, 30, 10);
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(300, 40, 1, 30, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 0.666 * bossmovespeed);
		
		pattern_direction = scr_Soul_Point()
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(120, 10, 1, 120, 30, 10);
		
		scr_Boss_Jump_Setup_v2(0, 2 * bossmovespeed, x, y);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.6);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 210)
		attack_stats.bullet_sprite = "spr_pink_big_bullet_v2"
		attack_stats.bullet_type = "obj_restless_bullet"
		attack_stats.bullet_count = 1;
		attack_stats.homing_speed = 2;
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 50;
		attack_stats.bullet_part_life = 20;
		attack_stats.bullet_part_color1 = make_color_rgb(255, 0, 253);
		attack_stats.bullet_part_color2 = attack_stats.bullet_part_color1
		attack_stats.bullet_part_frequency = 3;
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(30,30);
		
		speed = dash_speed;
        direction = dash_direction;
		dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(), 2)
		
		if pattern_count mod 6 = 0 {
			
			scr_Boss_Stretch("Vertical", 0.1);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(direction + scr_Wave(-90, 90, 2, 0), 1)
			attack_stats.bullet_sprite = "spr_pink_bullet_v2"
			attack_stats.bullet_type = "obj_accel_bullet_v2"
			attack_stats.bullet_speed = bossbulletspeed * 1.6;
			attack_stats.bullet_acceleration = bossbulletspeed * 0.03;
			attack_stats.bullet_count = 1;
			
			attack_stats.bullet_part = 1;
			attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
			attack_stats.bullet_part_area = 30;
			attack_stats.bullet_part_life = 15;
			attack_stats.bullet_part_color1 = make_color_rgb(255, 0, 253);
			attack_stats.bullet_part_color2 = attack_stats.bullet_part_color1
			attack_stats.bullet_part_frequency = 4;
		
			scr_boss_shoot_v2();
		}
		if pattern_count = 1 {
			active_attack = 3;
			scr_Boss_Attack_Time_Setup_v2(120, 10, 1, 120, 30, 10);
		
			scr_Boss_Jump_Setup_v2(0, 3 * bossmovespeed, x, y);	
		}
	}
	
	if active_attack = 3 {
	
		scr_Boss_Dash_Movement_v2(15,30);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(6);	
		
		if pattern_count > 60 {
			image_index = 1;	
		} else if pattern_count > 1 {
			image_index = 2;	
		}
		
		if pattern_count = 1 {
			image_index = 3;
			scr_Boss_Stretch("Horizontal", 0.6);
			attack_stats.bullet_sprite = "spr_pink_bullet_v2"
			attack_stats.bullet_type = "obj_accel_bullet_v2"
			attack_stats.bullet_speed = bossbulletspeed * 1.6;
			attack_stats.bullet_acceleration = bossbulletspeed * 0.03;
			attack_stats.bullet_count = 18;
			attack_stats.bullet_spread = 20;
			
			attack_stats.bullet_part = 1;
			attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
			attack_stats.bullet_part_area = 30;
			attack_stats.bullet_part_life = 15;
			attack_stats.bullet_part_color1 = make_color_rgb(255, 0, 253);
			attack_stats.bullet_part_color2 = attack_stats.bullet_part_color1
			attack_stats.bullet_part_frequency = 4;
		
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
    active_attack = 0;
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp_Dir(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_restless_burst, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_restless_chase, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_restless_jump_into_chaos, _hold_frame, 1, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_restless;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
