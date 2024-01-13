/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
if active_attack > 0 and active_attack_delay <= 0 {
	scr_Boss_Height_Bob(60, 0.5, 0);
} else {
	scr_Boss_Height_Bob(30, 1, 0);	
}

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.15, 1, 0);

direction = scr_Soul_Point()
speed = bossmovespeed;
if active_attack != 0 {
	speed = bossmovespeed * 0.2;	
}

if champ = 2 {
	var _dir = scr_Soul_Point()
	
	x += lengthdir_x(speed, _dir + 90)
	y += lengthdir_y(speed, _dir + 90)
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	if champ = 1 {
		active_attack = 2 + currentphase	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(18, 50, 10, 120, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
    }
	
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(15, 50, 10, 120, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = random(360);
    }
	
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 10, 90, 30, 10);
    }
	
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(6, 50, 60, 90, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = random(360);
    }
	
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

bullet_type = obj_Rain_Drop_Bullet;
bullet_sprite = spr_Tear_Drop_Bullet;
bullet_speed = bossbulletspeed * (1 + random(0.75));
bullet_power = bosspower;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 45)
		pattern_direction = scr_Angle_Converge(pattern_direction, scr_Soul_Point(), 10);
		
		scr_Boss_Shoot();
		
		if pattern_count = 9 and champ = 2 {
			bullet_count = 8;
			bullet_spread = 45;
			bullet_speed = bullet_speed + bossbulletspeed * 0.55;
				
			bullet_type = obj_Zig_Zag_Bullet;
			bullet_sprite = spr_Lightning_Bullet;
				
			scr_Boss_Shoot();	
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_count = 4;
		bullet_spread = 90;
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 30)
		
		scr_Boss_Shoot();
		
		if pattern_count = 9 and champ = 2 {
			bullet_count = 8;
			bullet_spread = 45;
			bullet_speed = bullet_speed + bossbulletspeed * 0.55;
				
			bullet_type = obj_Zig_Zag_Bullet;
			bullet_sprite = spr_Lightning_Bullet;
				
			scr_Boss_Shoot();	
		}
	}
	
	if active_attack = 3 {
	
		scr_Boss_Stretch("Vertical", 0.65);
		
		bullet_type = obj_Lob_Direction_Bullet
		
		repeat(8) {
			
			bullet_bounce_speed = 3 + random(2);
			bullet_lob_time = 75 + random(60);
			bullet_lifespan = bullet_lob_time + 2;
			bullet_speed = bossbulletspeed * (1.25 + random(1));
		
			bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 90)
			
			scr_Boss_Shoot();
		}
	
	}
	
	if active_attack = 4 {
	
		scr_Boss_Stretch("Vertical", 0.65);
		
		bullet_type = obj_Lob_Direction_Bullet
		bullet_count = 3;
		bullet_spread = 120;
		
		repeat(3) {
			
			bullet_bounce_speed = 3 + random(2);
			bullet_lob_time = 75 + random(60);
			bullet_lifespan = bullet_lob_time + 2;
			bullet_speed = bossbulletspeed * (1.25 + random(1));
		
			bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 20)
			
			scr_Boss_Shoot();
		}
		
		pattern_direction += 30;
	
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
if active_attack != 0 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_thought_cloud_v2_cry, _hold_frame, 3, 3, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	}
} else {
	sprite_index = spr_thought_cloud_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
