/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 2 {
	direction += 4;
	var _ang_diff = abs(angle_difference(direction, scr_Soul_Point()))
	speed = bossmovespeed * (240 - _ang_diff) / 40;
} else if active_attack = 1 and active_attack_delay < 0 {
	//direction = scr_Angle_Converge(direction, scr_Soul_Point() + 90 + scr_Wave(0, 180, 2, 0), 3)
	direction = point_direction(x, y, room_width /2, room_height / 2) + 70;
	speed = scr_Converge(speed, bossmovespeed * 2.5, 0.05)
	var _away_soul = scr_Soul_Point() + 180
	var _soul_dist = scr_Soul_Distance() + 10
	x += lengthdir_x(800 / _soul_dist, _away_soul)
	y += lengthdir_y(800 / _soul_dist, _away_soul)
	
} else {
	speed = speed * 0.99;	
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	if currentphase = 1 {
		active_attack = choose(1, 2);
	}
	if currentphase = 2 and active_attack = 0 {
		active_attack = 3;	
	}
	//active_attack = 1;
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 60, 1, 90, 30, 240);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(8, 40, 40, 120, 30, -10);
		
    }
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 40, 1, 0, 0, 40);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	if active_attack = 4 {
		//scr_Boss_Attack_Time_Setup_v2(90, 30, 1, 30, 30, 40);
		
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);	
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
		
		/*bullet_count = 6;
		bullet_spread = 360 / bullet_count;
		bullet_type = obj_Mischief_Bullet_v2;
		bullet_sprite = spr_Mischief_Shot;
		
		bullet_speed = bossbulletspeed * (2)
		bullet_lifespan = active_attack_duration - 10; */
		
		minion_count = 1;
		minion_type = obj_mini_mischief;
		minion_health = bossmaxhealth / 10;
		minion_speed = bossbulletspeed * (2)
		
		//scr_Boss_Shoot();
		var _dir = 0;
		repeat(6) {
			minion_dir = _dir
			scr_Minion_Spawn()
			_dir += 60;
			bossSize = bossSize * 0.95;
		}
		
		var _new_pos = scr_Boss_Teleport_v2_Return(-128, -1, 300)
		x = _new_pos[0]
		y = _new_pos[1]
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 90)
		bullet_direction += (180 * (pattern_count mod 2)) - 90
		bullet_type = obj_Wave_Homing_Trail_Bullet;
		bullet_sprite = spr_Glowy_Pink_Shot;
		bullet_speed = bossbulletspeed * (1.5 + random(1));
		bullet_lifespan = 300 + random(60);
		
		scr_Boss_Shoot();
	}
	
	if active_attack = 3 {
		scr_Boss_Stretch("Vertical", 1);
		
		var _new_pos = scr_Boss_Teleport_v2_Return(-128, -1, 300)
		x = _new_pos[0]
		y = _new_pos[1]
		
		if pattern_count = 1 {
			active_attack = 4;	
			
			scr_Boss_Attack_Time_Setup_v2(80, 50, 1, 30, 20, 50);
			scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);		
		}
	
	}
	
	if active_attack = 4 {
		scr_Boss_Dash_Movement_v2(4,20);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count = 11 {
			image_index = 4	
		}
		
		if pattern_count = 1 {
			bullet_direction = random(360);
			bullet_count = 10;
			bullet_spread = 360 / bullet_count;
			
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Pink_Shot;
			bullet_speed = bossbulletspeed * 2.25;
		
			scr_Boss_Shoot();	
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
if active_attack = 4 {
	scr_Boss_Size_Lerp_Dir(0.15, false)
} else {
	scr_Boss_Size_Lerp(0.15);
}

// Handles boss attack sprite animation
if active_attack = 1 {
	scr_Boss_Attack_Sprite_v2(spr_spirit_of_mischief_v2_fission, -1, 10, 10, 0);
	if image_index >= 1 and image_index < 3 {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_spirit_of_mischief_v2_bullet_dance, _hold_frame, 1, 9, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 4;
	scr_Boss_Attack_Sprite_v2(spr_spirit_of_mischief_v2_teleport, _hold_frame, 8, 8, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 4 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_spirit_of_mischief_v2_chomp, _hold_frame, 3, 3, 70);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	}
} else {
	sprite_index = spr_spirit_of_mischief_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
