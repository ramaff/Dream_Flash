/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

var _soul_dir = scr_Soul_Point() 
if _soul_dir > 90 and _soul_dir < 270 {
	hspeed -= 0.025 * bossmovespeed
} else {
	hspeed += 0.025 * bossmovespeed	
}

speed = clamp(speed, -bossmovespeed, bossmovespeed)

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 4, 3, 3, 3);
	if scr_Minion_Count(currentphase) {
		active_attack = choose(1, 2, 4);	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(15, 50, 15, 150, 30, 10);
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(10, 90, 20, 150, 30, 10);
		
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(currentphase, 90, 30, 150, 30, 40);
		
    }
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(45, 50, 4, 150, 30, 10);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

bullet_type = obj_Rain_Drop_Bullet;
bullet_sprite = spr_Tear_Drop_Bullet;
bullet_speed = bossbulletspeed * (1.5 + random(0.75));
bullet_power = bosspower;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		if pattern_count mod 2 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		
		bullet_type = obj_Rain_Drop_Bullet;
		bullet_count = 4;
		bullet_spread = 30;
		boss_yoffset = 50;
		bullet_speed = bossbulletspeed * (1.75 + random(0.25));
		
		bullet_direction = 238 + random(4) + scr_Wave(-30, 30, 8, 0);
		boss_xoffset = -100;
		
		scr_Boss_Shoot();
		
		bullet_direction = 298 + random(4) + scr_Wave(-30, 30, 8, 0);
		boss_xoffset = 100;
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.1);
		
		bullet_type = obj_Splash_Bounce_Bullet;
        bullet_sprite = spr_Big_Glowy_Blue_Shot;
        bullet_speed = bossbulletspeed * (0.7 + random(1.6));
        bullet_power = bosspower * 2;
		
		boss_yoffset = 150;
		boss_xoffset = 10;
		
		bullet_direction = 240 + random(60);
		
		scr_Boss_Shoot();
	}
	
	if active_attack = 3 {
	
		minion_count = 1;
		minion_type = obj_dream_cloud;
		minion_health = bossmaxhealth / 4;
		minion_dir = 270
		minion_speed = bossbulletspeed * (1.5 + random(0.5))
		minion_yy = 150;
		minion_knockdefense = 5
		
		//bosshealth -= 50;
		//scr_Damage_Indicator(0, 50, 1)
		//minion_movespeed = bossbulletspeed;

		scr_Minion_Spawn();
	
	}
	
	if active_attack = 4 {
		if pattern_count mod 3 = 0 {
			scr_Boss_Stretch("Vertical", 0.15);
		}
		//bullet_speed = bossbulletspeed * (0.5 + (pattern_count / 10) + random(0.5))
		bullet_speed += bossmovespeed * 0.75;
		boss_yoffset = 50;
		
		if champ = 1 {
			bullet_speed = bossbulletspeed * (0.5 + (pattern_count / 10) + random(0.5))
			bullet_type = obj_Rain_Drop_Bullet_Turn;
		}
		
		bullet_direction = 225 + random(30) + scr_Wave(-90, 90, 4, 0);
		boss_xoffset = -100;
		
		scr_Boss_Shoot();
		
		bullet_direction = 285 + random(30) + scr_Wave(-90, 90, 4, 0);
		boss_xoffset = 100;
		
		scr_Boss_Shoot();
	
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
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack = 1 || active_attack = 4 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_wall_of_thoughts_v2_cry_stream, _hold_frame, 4, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 || active_attack = 3 {
	if image_index >= 2 and image_index < 7 {
		scr_Soul_Push_Pull(1 + (image_index / 4))
	}
	var _hold_frame = 7;
	scr_Boss_Attack_Sprite_v2(spr_wall_of_thoughts_v2_suck_shoot, _hold_frame, 8, 8, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_wall_of_thoughts_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
