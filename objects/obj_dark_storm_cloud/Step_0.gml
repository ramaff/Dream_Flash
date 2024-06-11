/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 0 {
	speed = lerp(speed, bossmovespeed, 0.1)
} else {
	speed = lerp(speed, bossmovespeed * 0.2, 0.1)
}

direction = scr_Soul_Point()

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	if scr_Minion_Count(2) {
		active_attack = choose(1, 2);
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(4, 50, 30, 180, 30, 20);
		
		pattern_direction = random(360);
    }
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(10, 50, 10, 180, 30, 20);
		
		pattern_direction = random(360);
    }
	// Hop leap attack setup example
	if active_attack = 4 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, 10);
		
		//scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(2, 50, 30, 180, 30, 10);
		
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_lifespan = 80;
        bullet_type = obj_Splash_Bullet_Reserve;
        bullet_sprite = spr_Rain_Ball;
        if champ = 2 {
            bullet_type = obj_Thunder_Bullet;
            bullet_sprite = spr_Thunder_Ball;
        }
        bullet_count = 2;
		bullet_spread = 360 / bullet_count;
		bullet_direction = random(360);
        bullet_speed = bossbulletspeed * (2.3 + random(0.1));
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 2)
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    pattern_direction += 30;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 0.5)
        bullet_type = obj_Phase_Spin_Bullet;
        bullet_sprite = spr_Water_Drop_Bullet;
        bullet_speed = bossbulletspeed * 2.85;
        bullet_count = 10;
        bullet_spread = 36;
		bullet_lifespan = 360;
		
		bullet_direction += (3 * (pattern_count mod 2)) - 1.5;
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 4 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(2);	
		
		if pattern_count = floor(pattern_count_max) {
			bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
			scr_Boss_Shoot();	
		}
	}
	
	if active_attack = 3 {
	
		minion_count = 1;
		minion_type = obj_dark_storm_minion;
		minion_health = bossmaxhealth / 9;
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

image_angle = scr_Wave(-10, 10, 3, 0)

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack = 3 || active_attack = 4 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_dark_storm_cloud_mouth_mood, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 1 || active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_dark_storm_cloud_eye_mood, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_dark_storm_cloud;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
