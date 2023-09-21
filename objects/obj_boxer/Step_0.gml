/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(40, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 0 {
	speed = bossmovespeed * 0.75;
	direction = scr_Soul_Point();
} else if active_attack = 2 {
	if box_xx <= center_xx - box_size {
		if box_yy >= center_yy + box_size {
			box_move_direction = 90;
		}
		if box_yy <= center_yy - box_size {
			box_move_direction = 0;
		}
	} else if box_xx >= center_xx + box_size {
		if box_yy >= center_yy + box_size {
			box_move_direction = 180;
		} 
		if box_yy <= center_yy - box_size {
			box_move_direction = 270;
		}
	}
	//Print_DF("box_xx: " + string(box_xx) + ", box_yy: " + string(box_yy))
	//Print_DF("box_move_direction: " + string(box_move_direction))
	
	var _attack_speed_curr = 0.75 + ((65 - active_attack_delay) / 100)
	if active_attack_delay < 0 {
		_attack_speed_curr = 0.75 + (sqrt((pattern_count_max - pattern_count)));
	} if pattern_count <= 0 {
		_attack_speed_curr = 0.75 + ((active_attack_duration) / 20)
	}
	
	box_xx += lengthdir_x(bossmovespeed * _attack_speed_curr, box_move_direction)
	box_yy += lengthdir_y(bossmovespeed * _attack_speed_curr, box_move_direction)
	
	speed = min(bossmovespeed * _attack_speed_curr, point_distance(x, y, box_xx, box_yy))
	direction = point_direction(x, y, box_xx, box_yy)
} else if active_attack != 3 {
	speed = bossmovespeed * 0.375;
	direction = scr_Soul_Point();
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
	
	// Hammer Attack
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(6, 60, 20, 120, 30, -20);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Marble Dump
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(25, 70, 15, 120, 30, 0);
    }
	// Spill
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(360, 30, 3, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), bossmovespeed * 0.75, bossmovespeed * 2)
		
		//dash_direction = (round(random(4)) + 0.5) * 90
		direction = dash_direction - 60 + random(120)
		
		boss_height = 140;
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Horizontal", 0.5);
		
		bullet_count = 4;
		bullet_spread = 90;
		bullet_speed = bossbulletspeed * 2;
		
		boss_xoffset = 60;
		boss_yoffset = 40;
		bullet_direction = 0;
		if pattern_count mod 2 = 0 {
			boss_xoffset = -60;
			boss_yoffset = 40;
			bullet_direction = 45;
		}
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(bullet_direction, 10)
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
		bullet_sprite = choose(spr_Glowy_Enemy_Shot, spr_Glowy_Blue_Shot, spr_Glowy_Green_Shot, spr_Glowy_Yellow_Shot, spr_Glowy_Pink_Shot)
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 360)
		bullet_type = obj_Marble_Bullet;
		bullet_lob_time = 45 + random(30);
		bullet_lifespan = (bullet_lob_time + 2) * 4;
		bullet_bounce_speed = 3 + random(2);
		bullet_speed = bossbulletspeed * (0.5 + random(0.6))
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 3 {
		
		scr_Boss_Dash_Movement_v2(30,30);
		
		speed = dash_speed;
		
		bullet_type = obj_Poison_Pool;
	    bullet_sprite = spr_Poison_Pool
	    bullet_speed = bossbulletspeed * 0;
	    bullet_power = bosspower * 0.15;
	    bullet_lifespan = 180 + irandom(15);
	    bullet_size = 0.65 + random(0.15);
		bullet_depth = 20;

		boss_yoffset = boss_height;
	    scr_Just_Shoot();
		
		if pattern_count mod 80 = 40 {
			minion_count = 1;
		    minion_type = obj_boxless
		    minion_health = bossmaxhealth / 10;
			//minion_spawn_animation = spr_pocket_minion_spawn
		
			var _pos = scr_Boss_Teleport_v2_Return(-128)
			minion_yy = boss_height;
	        scr_Minion_Spawn();
		}
		
		direction += (pattern_count_max / 120) - (pattern_count / 60)
		scr_Wall_Bounce();
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
if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_boxer_hammers, _hold_frame, 3, 6, 20);
	if image_index = floor(_hold_frame) {
		scr_Boss_Wobble("Horizontal", 4, 0.4, 0)
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_boxer_dump, _hold_frame, 2, 2, 20);
	if image_index = floor(_hold_frame) {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	}
} else if active_attack = 3 {
	var _hold_frame = 3;
	scr_Boss_Attack_Sprite_v2(spr_boxer_spill, _hold_frame, 3, 3, 20);
	//if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	//}
} else {
	sprite_index = spr_boxer;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
