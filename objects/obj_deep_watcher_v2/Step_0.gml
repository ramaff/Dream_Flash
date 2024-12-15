/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

//direction = round(direction / 45) * 45;

image_angle = direction + 180;

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

if active_attack = 1 {
	path_speed = bossmovespeed * 1.5;
} else if active_attack = 2 {
	path_speed = bossmovespeed * 0.5;
}
if active_attack = 0 {
	path_speed = bossmovespeed;	
}


// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

//path_speed = bossmovespeed * 0.5;

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	if currentphase = 2 {
		active_attack = choose(3, 4);
	}
	//active_attack = 9;
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 20, 120, 30, 10);
    }
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 30, 120, 30, 10);
    }
	// Hop leap attack setup example
	if active_attack = 3  {
		// 
		scr_Boss_Attack_Time_Setup_v2(7, 60, 60, 120, 30, 10);
    }
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(25, 50, 10, 120, 30, 10);
    }
	pattern_direction = image_angle + 180 + 90;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1  {
		
		bullet_speed = bossbulletspeed * 1.5;
	
		bullet_type = obj_Basic_Laser_Bullet;
		bullet_sprite = spr_Drill_Laser;
		
		//image_angle = -10 + (20 * (pattern_count mod 2))
	
		scr_Sound_Effect(snd_Boss_Laser);
		if active_attack = 1 {
			scr_Boss_Stretch("Horizontal",0.25);
		}
		
		var _dir = image_angle + 180 + 90;
		
		boss_radius = 0;
		bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 20)
	    boss_xoffset = lengthdir_x(100,image_angle);
	    boss_yoffset = lengthdir_y(100,image_angle) + lengthdir_y(85, image_angle + 270);
	    scr_Boss_Shoot();

	    boss_xoffset = lengthdir_x(100,image_angle + 180);
	    boss_yoffset = lengthdir_y(100,image_angle + 180) + lengthdir_y(85,image_angle + 270);
	    scr_Boss_Shoot();
	
	}
	
	if active_attack = 2 {
	    bullet_sprite = spr_Big_Glowy_Yellow_Shot
	    bullet_speed = bossbulletspeed * 1.6;
	    bullet_power = bosspower * 1.5;
	    bullet_direction = (-10 + random(20)) / bossaccuracy;
	    bullet_lifespan = 300;
	    bullet_size = 1;
	    bullet_count = 1;
	    bullet_spread = 0;
	    boss_radius = 0;
	
		bullet_part = 1;
		bullet_part_sprite = spr_Soul_Big_Bit;
		bullet_part_area = 45;
		bullet_part_life = 30;
		bullet_part_color1 = make_color_rgb(255,0,238);
		bullet_part_color2 = make_color_rgb(255,0,238);
		bullet_part_frequency = 4;
		scr_Boss_Stretch("Horizontal",0.4);
		
	    scr_Soul_Shoot();
		scr_Sound_Effect(snd_Deep_Laser);
		

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

seg_angle = image_angle + 180 + 90;
seg_distance = 0;

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

if active_attack = 1 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_deep_watcher_v2_drill_shoot, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_deep_watcher_v2_eye_shoot, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_deep_watcher_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
