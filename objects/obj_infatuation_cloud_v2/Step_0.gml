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

if currentphase = 2 {
	if active_attack_delay < 0 and active_attack = 3 {
		var _move_fac = 6.5
		speed = scr_Converge(speed, bossmovespeed * _move_fac, 0.025)
		
		var _dir = point_direction(x, y, room_width / 2, room_height / 2) + 90
	
		direction = scr_Angle_Converge(direction, _dir + scr_Wave(-90, 90, 4, 0), 3)
	} else {
		direction = scr_Soul_Point()
		speed = scr_Converge(speed, bossmovespeed * 0.5, 0.1)
	}
	
} else {
	direction = scr_Soul_Point()
	speed = bossmovespeed * 0.2;
	if active_attack = 1 {
		speed = bossmovespeed;
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	if currentphase = 2 {
		active_attack = 3;	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(32, 50, 8, 120, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
    }
	
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(15, 50, 13, 240, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = random(360);
    }
	
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(75, 50, 8, 120, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		direction = pattern_direction + 180;
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
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_type = obj_Lob_Home_Bullet;
		bullet_sprite = spr_Blood_Tear;
		
		bullet_speed = bossbulletspeed * (1.75 + random(0.75));
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 45)
		bullet_direction += scr_Wave(-135, 135, 2, 0)
		
		bullet_bounce_speed = 1 + random(1);
		
		bullet_lob_time = bullet_lifespan - 2;
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_type = obj_Rebound_Bullet;
		bullet_lifespan = 240 + (pattern_count * 20) + random(120);
		bullet_speed = (1 + (900 / bullet_lifespan)) * bossbulletspeed;
		bullet_count = 4;
		bullet_spread = 90;
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 30)
		
		pattern_direction += 10;
		
		scr_Boss_Shoot();
	}
	
	if active_attack = 3 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_type = obj_Very_Wide_Wiggle_Bullet;
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 45)
		direction = scr_Angle_Converge(direction, scr_Soul_Point(), 10);
		
		pattern_direction = direction + 180;
		
		scr_Boss_Shoot();
		
		bullet_type = obj_Very_Wide_Wiggle_Bullet_Alt;
		
		scr_Boss_Shoot();
		
		speed += ((bossmovespeed * 5) - speed) / 10
		//direction = pattern_direction + 180;
	
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
if active_attack = 1 || active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_infatuation_cloud_v2_cry, _hold_frame, 3, 3, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	}
} else if active_attack = 3 || active_attack = 4 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_infatuation_cloud_v2_p2_cry, _hold_frame, 3, 3, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	}
} else {
	if currentphase = 1 {
		sprite_index = spr_infatuation_cloud_v2;
	}
	if currentphase = 2 {
		scr_Boss_Phase_Transition_Animation(2, spr_infatuation_cloud_v2_phase_transition, spr_infatuation_cloud_v2_p2, 3)
	}
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
