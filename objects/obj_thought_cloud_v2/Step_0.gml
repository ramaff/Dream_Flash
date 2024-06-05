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

if champ = 3 {
	if active_attack = 1 {
		direction = scr_Angle_Converge(direction, scr_Soul_Point(), 0.75)
		if abs(angle_difference(direction, scr_Soul_Point())) > 45 {
			speed = scr_Converge(speed, bossmovespeed * 0.5, 0.15)	
			direction = scr_Angle_Converge(direction, scr_Soul_Point(), 2.25)
		}
	} else if active_attack = 2 {
		//direction += 1.5
		//var _center_dir = point_direction(x,y,room_width/2,room_height/2)
		var _xx = (room_width / 2) + lengthdir_x(150, active_attack_duration * 1.5)
		var _yy = (room_width / 2) + lengthdir_y(150, active_attack_duration * 1.5)
		direction = point_direction(x, y, _xx, _yy)
		speed = min(speed, point_distance(x, y, _xx, _yy))
		//x += lengthdir_x(2, _xx)
		//y += lengthdir_y(2, _yy)
	}
	if active_attack != 0 and active_attack_delay < 0 {
		_move_fac = 2.3;
		speed = scr_Converge(speed, bossmovespeed * _move_fac, 0.05)
	} else {
		speed = scr_Converge(speed, bossmovespeed * 0.75, 0.075)
	}
} else {
	direction = scr_Soul_Point()
	if champ = 8 {
		direction = scr_Soul_Point(x, y + 200)
	}
	speed = bossmovespeed;
	if active_attack != 0 {
		speed = bossmovespeed * 0.2;
		if champ = 8 {
			speed = bossmovespeed * 0.5;
		}
	}
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
	if champ = 8 {
		active_attack = choose(5,6)	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 18;
		if champ = 3 {
			_attack_count = 54;
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, 10, 120, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
    }
	
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 15;
		if champ = 3 {
			_attack_count = 45;
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, 10, 120, 30, 10);
		
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
	 if active_attack = 5 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 16;
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, 30, 120, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(x, y + 100), 30)
    }
	
	if active_attack = 6 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 12;
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 50, 20, 180, 30, 10);
		
		// Can set up the initial pattern direction
		pattern_direction = 90;
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

if champ = 3 {
	bullet_sprite = spr_Blood_Tear;	
}
if champ = 8 {
	bullet_sprite = spr_Rainbow_Tear;
}

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 45)
		pattern_direction = scr_Angle_Converge(pattern_direction, scr_Soul_Point(), 10);
		
		if champ = 3 {
			bullet_direction = direction + 180;
			bullet_direction = scr_Boss_Bullet_Direction_Formula(bullet_direction, 45)
		}
		
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
		if champ = 3 {
			bullet_direction = 45 + scr_Wave(-15, 15, 3, 0)
		}
		
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
	
	if active_attack = 5 {
	
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_type = obj_Lob_Direction_Bullet;
		
		bullet_lob_time = 210;
		bullet_lifespan = bullet_lob_time + 2;
		bullet_bounce_speed = 2;
		
		
		repeat(5) {
			
			bullet_bounce_speed += 1.5;
			bullet_speed = bossbulletspeed * (1.45 + random(0.25));
			bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 5);
			
			scr_Boss_Shoot();
		}
		
		pattern_direction = scr_Angle_Converge(pattern_direction, 
											   scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(x, y - 100), 5),
											   20)
	
	}
	
	if active_attack = 6 {
	
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_speed = bossbulletspeed * (2.5 + random(0.5));
		bullet_size = 1.4;
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 30)
		
        bullet_sprite = spr_Rainbow_Tear;
		bullet_type = obj_Rainbow_Trail_Tear;
		bullet_lifespan = 450;
		
		scr_Boss_Shoot();
		
		/*
		bullet_type = obj_Lob_Direction_Bullet;
		
		bullet_spread = 30;
		bullet_count = 5;
		
		bullet_lob_time = 330 + random(60);
		bullet_lifespan = bullet_lob_time + 2;
		bullet_bounce_speed = 6.5 + random(1);
		bullet_speed = bossbulletspeed * (0.65 + random(0.15));
			
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 5)
			
		scr_Boss_Shoot();
		
		bullet_direction += 180;
		
		scr_Boss_Shoot();
		
		pattern_direction += 5;
		*/
	
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
	if champ = 8 {
		scr_Boss_Attack_Sprite_v2(spr_thought_cloud_v2_rainbow_cry, _hold_frame, 3, 3, 10);
	} else {
		scr_Boss_Attack_Sprite_v2(spr_thought_cloud_v2_cry, _hold_frame, 3, 3, 10);
	}
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)
	}
} else {
	sprite_index = spr_thought_cloud_v2;
	if champ = 8 {
		sprite_index = spr_thought_cloud_v2_rainbow;
	}
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
