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

if active_attack = 0 {
	direction = scr_Soul_Point();
	speed = bossmovespeed * 0.5;
} else if active_attack = 1 {
	direction = scr_Soul_Point();
	speed = bossmovespeed * 0.05;
} else if active_attack = 3 {
	direction = scr_Soul_Point() + 180;
	speed = bossmovespeed * 0.25;
}

if active_attack = 5 {
	speed = 0;	
}

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	if scr_Over_Minion_Count() {
		active_attack = choose(1, 2);
	}
	
	if currentphase = 2 {
		active_attack = choose(4, 5);
		if scr_Over_Minion_Count() {
			active_attack = choose(5);
		}
		if champ = 1 {
			active_attack = 4;	
		}
	}
	
	// Triple Spin Shots
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 50, 45, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Multi Portal Hop
    if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 160, 130, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Cheeky Pocket Spawns
    if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(2, 50, 90, 120, 30, 10);
		
		for(var _i = 0; _i < 3; _i++) {
			var _pos = scr_Boss_Teleport_v2_Return(-256)
	        pocket_spawn[_i].xx = _pos[0] - x;
	        pocket_spawn[_i].yy = _pos[1] - y;
		}
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Dash Spawns
    if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(480, 20, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, bossmovespeed * 2.7)
		
		dash_direction = scr_Keep_Horizontal(dash_direction, 30)
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Triple Portal Soul Array Shots
    if active_attack = 5 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(18, 50, 15, 120, 30, 10);
		
		var _ang = 180
		
		for(var _i = 0; _i < 3; _i++) {
			var _xx = x + lengthdir_x(100, _ang)
			var _yy = y + lengthdir_y(100, _ang)
			_ang += 120
			
	        with instance_create(_xx, _yy, obj_Bullet_Portal) {
				alarm[0] = 330;
				
			}
		}
		
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
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
		if pattern_count > 1 {
			bullet_direction += (270 * (pattern_count - 2)) - 135
		}
		
		bullet_speed = bossbulletspeed * 1;
		bullet_power = bosspower * 2;
		bullet_type = obj_Portal_Spinner;
        bullet_sprite = spr_Portal_Shot;
		bullet_count = 1;
		
		if champ = 1 {
			bullet_count = 2;
			bullet_spread = 120;
		}
		
		scr_Boss_Shoot();

	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
		boss_xoffset = -50;
		boss_yoffset = -100;
		if facing_direction = -1 {
			boss_xoffset = 50;
		}
		
		bullet_speed = bossbulletspeed * 2.25;
		bullet_power = bosspower;
		if champ = 0 {
			bullet_count = 9;
	        bullet_sprite = spr_Glowy_Purple_Shot;
			bullet_spread = 18;
		
			scr_Boss_Shoot();
		}
		if champ = 1 {
			bullet_count = 1;
	        bullet_sprite = spr_Glowy_Orange_Shot;
			bullet_spread = 0;
			bullet_type = obj_Popcorn_Kernel_Bullet;
			
			
			repeat(6) {
				bullet_speed = bossbulletspeed * (2.1 + random(1.2));
				bullet_lob_time = 45 + random(30);
				bullet_lifespan = (bullet_lob_time + 2) * 4;
				bullet_bounce_speed = 3 + random(2);
				
				bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 50)
				
				scr_Boss_Shoot();
			}
		}
	}
	
	if active_attack = 3 {
		scr_Boss_Stretch("Vertical", 1);
		
		minion_count = 1;
	    minion_type = obj_pocket_minion_v2
	    minion_health = bossmaxhealth / 25;
		minion_spawn_animation = spr_pocket_minion_spawn
		
		for(var _i = 0; _i < 3; _i++) {
			minion_xx = pocket_spawn[_i].xx
			minion_yy = pocket_spawn[_i].yy
	        scr_Minion_Spawn();
		}
	}
	
	if active_attack = 4 {
		scr_Boss_Dash_Movement_v2(30,30);
		
		scr_Room_Loop_Everywhere(128);
		
		speed = dash_speed;
        direction = dash_direction;	
		
		//dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(), 0.5)
		
		if pattern_count mod 15 = 0 {
			scr_Boss_Stretch("Horizontal", 0.2);
			
			bullet_speed = bossbulletspeed * 0.25;
			bullet_direction = dash_direction + 180;
			
	        bullet_type = obj_Dormant_Bullet;
	        bullet_sprite = spr_Glowy_Purple_Shot;	
			
			if champ = 1 {
				bullet_sprite = spr_Glowy_Orange_Shot;
				bullet_type = obj_Popcorn_Kernel_Bullet;
				bullet_lob_time = 60;
				bullet_lifespan = (bullet_lob_time + 2) * 4;
				bullet_bounce_speed = 3;
				
				bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 50)	
			}
			
			scr_Boss_Shoot();
		}
		if !scr_Over_Minion_Count() {
			if pattern_count mod 100 = 30 {
				minion_count = 1;
			    minion_type = obj_pocket_minion_v2
			    minion_health = bossmaxhealth / 15;
				minion_spawn_animation = spr_pocket_minion_spawn
		
				var _pos = scr_Boss_Teleport_v2_Return(-128)
				minion_xx = _pos[0] - x;
				minion_yy = _pos[1] - y;
		        scr_Minion_Spawn();
			}
		}
	}
	
	if active_attack = 5 {
		scr_Boss_Stretch("Vertical", 0.5);
		
		bullet_direction = 180
		
		bullet_speed = bossbulletspeed * 1.5;
		bullet_speed += bossbulletspeed * 0.075 * (pattern_count_max - pattern_count)
		bullet_count = 3;
		bullet_spread = 120;
		
		bullet_sprite = spr_Glowy_Purple_Shot;
		
		scr_Boss_Shoot();

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

/*
var _mir = false;

if active_attack = 2 and pattern_count mod 2 = 0 {
	_mir = true;	
} */

// Go back to normal default size
scr_Boss_Size_Lerp_Dir(0.15, false);

// Handles boss attack sprite animation
if active_attack == 1 || active_attack == 5 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pocket_v2_shoot, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack == 2 {
	scr_Boss_Attack_Sprite_v2(spr_pocket_v2_springy, -1, 9, 21, 100);
	if image_index = 15 {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
	if image_index = 9 {
		scr_Boss_Teleport_From_Boss(200, -192)
		if y > obj_Soul_Parent.y {
			y += 150;
		}
		direction = scr_Soul_Point()
		speed = 0.01;
	}
} else if active_attack == 3 || active_attack == 4 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pocket_v2_cheeky, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_pocket_v2;
}



// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
