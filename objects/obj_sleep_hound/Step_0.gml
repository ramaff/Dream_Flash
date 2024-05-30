/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if currentphase = 2 {
	weight = 20;
	
	var _target_speed = bossmovespeed * 3
	//_target_speed -= abs(angle_difference(direction, scr_Soul_Point())) / 120;
	
	if active_attack = 3 {
		speed = scr_Converge(speed, _target_speed, 0.2)
	} else {
		if active_attack = 1 || active_attack = 2 {
			speed = 0;
		}
		active_attack_cooldown = min(30, active_attack_cooldown);
		active_attack = 0;

		/*if active_attack_cooldown < 0 {
			active_attack_cooldown = 30;	
		} */
	}
	direction = scr_Angle_Converge(direction, scr_Soul_Point(), 1.5)
} else {
	direction = scr_Soul_Point();
	speed = 0.01;	
}

scr_Chain_Pull(target, 10, weight, target_weight);

if currentphase = 2 {
	if active_attack_cooldown > 20 {
		active_attack_cooldown = 20;
	}
	if active_attack != 3 {
		active_attack = 0;
		active_attack_delay = 0;
		active_attack_duration = 0;
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 1, 2);
	if currentphase = 2 {
		active_attack = 3;
	}
	
	// Hop leap attack setup example
	if active_attack = 1 {
		// 
		scr_Boss_Attack_Time_Setup_v2(240, 40, 1, 60, 60, -10);
		
		//scr_Boss_Jump_Setup_v2(5 * bossmovespeed, 12 * bossmovespeed, x, y);
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 1.5 * bossmovespeed, 3 * bossmovespeed);
    }
	
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(16, 40, 10, 120, 60, -10);
    }
	
	if active_attack = 3 {
		// 
		scr_Boss_Attack_Time_Setup_v2(60, 0, 1, 10, 0, 40);
		
		attack_counts = 2;
		
		scr_Boss_Jump_Setup_v2(0, 0, x, y);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 1.5 * bossmovespeed, 3 * bossmovespeed);
    }

}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
	
	bullet_part = 1;
	bullet_part_sprite = spr_Soul_Big_Bit;
	bullet_part_area = 30;
	bullet_part_life = 15;
	bullet_part_color1 = make_color_rgb(255,0,0);
	bullet_part_color2 = make_color_rgb(255,0,0);
	bullet_part_frequency = 4;
	
	if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(0.25);	
		
		dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(), 1.5)
	}
	
	if active_attack = 2 {
		
		scr_Boss_Stretch("Vertical", 0.2);
		
		bullet_type = obj_Accel_Accel_Bullet;
		bullet_speed = bossbulletspeed * 0.7
	
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point() + scr_Wave(-60, 60, 2, 0), 0)
		
		scr_Boss_Shoot();	
	}
	
	if active_attack = 3 {
		/*scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction; */
		
		scr_Jump_Movement_v2(3);	
		
		//dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(), 1.5)
		
		//if pattern_count mod 60 = 10 || pattern_count mod 60 = 20 {
		if pattern_count = 1 {
			
			scr_Boss_Stretch("Horizontal", 0.4);
			
			
			
			bullet_type = obj_Accel_Accel_Bullet;
			bullet_speed = bossbulletspeed * 0.5
			bullet_count = 2;
			bullet_spread = 180;
			speed = speed * 0.25;
	
			bullet_direction = scr_Boss_Bullet_Direction_Formula(direction, 0)
		
			scr_Boss_Shoot();	
			if attack_counts > 0 {
				attack_counts--;	
				scr_Boss_Attack_Time_Setup_v2(30, 0, 1, 0, 0, 10);
				scr_Boss_Jump_Setup_v2(0, 0, x, y);
			}
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
	scr_Boss_Attack_Sprite_v2(spr_sleep_hound_bark, _hold_frame, 2, 4, 20);
	if image_index = 4 {
		scr_Boss_Stretch("Horizontal", 0.4);	
	}
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_sleep_hound_fire_breath, _hold_frame, 3, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	if currentphase = 1 {
		sprite_index = spr_sleep_hound;
	} else if currentphase = 2 {
		scr_Boss_Phase_Transition_Animation(2, spr_sleep_hound_p2_transition, spr_sleep_hound_p2_bark, 4)
		if image_index = 0 and sprite_index = spr_sleep_hound_p2_bark {
			scr_Boss_Stretch("Horizontal", 0.4);	
		}
	}
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
