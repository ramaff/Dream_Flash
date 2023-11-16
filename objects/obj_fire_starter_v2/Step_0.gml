/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

if boss_height < 65 {
	boss_height = 65;
}

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.2, 1, 0);

direction = scr_Soul_Point();
speed = bossmovespeed;
	
if active_attack != 0 {
	speed = 0;
	if currentphase = 2 {
		speed = bossmovespeed * 0.5;
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	if scr_Minion_Count(1) {
		active_attack = choose(1, 2);
	}
	if currentphase = 2 {
		active_attack = 4;
	}
	
	// Flame Dance
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(2, 60, 60, 120, 30, -10);
    }
	// Sneeze Fire
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(60, 70, 1, 30, 30, -10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 4.5 * bossmovespeed, 7.5 * bossmovespeed);
		
		direction = scr_Soul_Point()
		speed = 0.1
		
		pattern_repetition = 2;
    }
	// Fire Kiss
    if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 120, 30, 10);
    }
	// Spit hot fire
    if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 60, 30, 10);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

bullet_part = 1;
bullet_part_sprite = spr_Soul_Big_Bit;
bullet_part_area = 30;
bullet_part_life = 15;
//bullet_part_color1 = make_color_rgb(255,100,50);
bullet_part_color1 = make_color_rgb(255,131,0);
//bullet_part_color2 = make_color_rgb(255,150,50);
bullet_part_color2 = make_color_rgb(255,131,0);
bullet_part_frequency = 4;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
	
	bullet_sprite = spr_Glowy_Orange_Shot;
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		bullet_type = obj_Accel_Bullet;
		
		if pattern_count = pattern_count_max {
			bullet_count = 16;
			bullet_spread = 360 / bullet_count;
			
			scr_Boss_Shoot();
		} else {
			bullet_spread = 20;
			bullet_count = 5;
			boss_xoffset = -50;
			
			bullet_speed = bossbulletspeed * 2;
			
			bullet_direction -= 40;
		
			scr_Boss_Shoot();
			
			boss_xoffset = 50;
			bullet_direction += 80;
		
			scr_Boss_Shoot();
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(15,30);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count mod 10 = 0 {
			boss_xoffset = -30 + random(60);
			boss_yoffset = -30 + random(60);
			
			bullet_type = obj_Lingering_Fire_Bullet;
			bullet_direction = random(360);
			bullet_speed = bossbulletspeed * (0.1 + random(0.2));
			
			bullet_part_size = 0.3;
			bullet_part_area = 30;
			bullet_part_life = 30;
			bullet_part_frequency = 5;
			
			bullet_lifespan = 270 + random(120);
			
			scr_Boss_Shoot()	
		}
		
		if pattern_count <= 1 and pattern_repetition > 0 {
			scr_Boss_Attack_Time_Setup_v2(60, 40, 1, 30, 30, -10);
			image_index = 5;
		
			scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 4.5 * bossmovespeed, 7.5 * bossmovespeed);
			
			pattern_repetition--;
		}
	}
	
	if active_attack = 3 {
		
		bullet_type = obj_Fire_Kiss_Spawning_Bullet;
		bullet_sprite = spr_fire_kiss_bullet;
		bullet_count = 1;
		bullet_lob_time = 90;
		bullet_lifespan = bullet_lob_time + 2;
		bullet_bounce_speed = 0;
		bullet_bounce_Y = 90
		bullet_bounce_gravity = 0.025
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)

		boss_yoffset = 20
		
		if facing_direction = -1 {
			boss_xoffset = 20
		} else {
			boss_xoffset = -20	
		}
		
		scr_Boss_Shoot()
		
		/*minion_count = 1;
		minion_type = obj_fire_kiss;
		minion_health = bossmaxhealth / 4;
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn(); */
	}
	
	if active_attack = 4 {
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
		bullet_type = obj_Fire_Lob_Bullet;
		bullet_count = 1;
		
		bullet_part_size = 0.3;
		bullet_part_area = 30;
		bullet_part_life = 30;
		bullet_part_frequency = 5;
		
		repeat(8) {
			bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 90)
			bullet_speed = bossbulletspeed * (1 + random(2));
			bullet_bounce_speed = 3 + random(3);
			bullet_lob_time = 60 + random(30);
			bullet_lifespan = bullet_lob_time + 2;
			
			scr_Boss_Shoot();
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
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
if active_attack = 2 {
	scr_Boss_Size_Lerp_Dir(0.15, true);
} else {
	scr_Boss_Size_Lerp_Dir(0.15, false)	
} 

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_fire_starter_v2_flame_dance, _hold_frame, 4, 13, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 6;
	scr_Boss_Attack_Sprite_v2(spr_fire_starter_v2_sneeze_fire, _hold_frame, 7, 7, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_fire_starter_v2_fire_kiss, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 4 {
	var _hold_frame = 4;
	scr_Boss_Attack_Sprite_v2(spr_fire_starter_v2_phase_2_shoot, _hold_frame, 5, 5, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	if currentphase = 1 {
		sprite_index = spr_fire_starter_v2;
	}
	if currentphase = 2 {
		scr_Boss_Phase_Transition_Animation(2, spr_fire_starter_v2_phase_2_into, spr_fire_starter_v2_phase_2, 5)
	}
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
