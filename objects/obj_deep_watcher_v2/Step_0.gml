/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

//direction = round(direction / 45) * 45;

image_angle = direction + 180;

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

if active_attack = 3 || active_attack = 6 || active_attack = 7 {
	path_speed = bossmovespeed * 0.75;
} else if active_attack = 4 || active_attack = 9 || active_attack = 8 {
	path_speed = bossmovespeed * 2;
} else {
	path_speed = bossmovespeed * 3;	
}
if active_attack = 0 {
	path_speed = bossmovespeed;	
}

if (active_attack = 0 and champ = 2) || active_attack = 6 {
	path_speed = bossmovespeed * 1.5;	
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
	active_attack = choose(1, 3);
	if champ = 1 {
		active_attack = choose(4, 6);
	}
	if champ = 2 {
		active_attack = choose(7, 9);
	}
	if currentphase = 2 {
		active_attack = choose(2, 3);
		if champ = 1 {
			active_attack = choose(5, 6);
		}
		if champ = 2 {
			active_attack = choose(8, 9);
		}
	}
	if champ = 8 {
		active_attack = choose(10, 11);	
	}
	//active_attack = 9;
	
    if active_attack = 1 || active_attack = 7 || active_attack = 8 || active_attack = 10 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 20, 120, 30, 10);
    }
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 30, 120, 30, 10);
    }
	// Hop leap attack setup example
	if active_attack = 3 || active_attack = 11 {
		// 
		scr_Boss_Attack_Time_Setup_v2(7, 60, 60, 120, 30, 10);
    }
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(25, 50, 10, 120, 30, 10);
    }
	if active_attack = 5 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(5, 50, 60, 120, 30, 10);
    }
	if active_attack = 6 {
		// 
		scr_Boss_Attack_Time_Setup_v2(7, 60, 60, 120, 30, 10);
    }
	if active_attack = 9 {
		scr_Boss_Attack_Time_Setup_v2(120, 60, 1, 120, 30, 10);	
	}
	
	pattern_direction = image_angle + 180 + 90;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 || active_attack = 2 || active_attack = 4 || active_attack = 5 || active_attack = 7 || active_attack = 8 || active_attack = 10 {
		
		bullet_speed = bossbulletspeed * 1.5;
	
		bullet_type = obj_Basic_Laser_Bullet;
		bullet_sprite = spr_Glowy_Red_Laser;
		
		//image_angle = -10 + (20 * (pattern_count mod 2))
	
		scr_Sound_Effect(snd_Boss_Laser);
		if active_attack = 1 || active_attack = 7 {
			scr_Boss_Stretch("Horizontal",0.25);
		} else if active_attack = 4 {
			scr_Boss_Stretch("Horizontal",0.1);
		} else if active_attack = 5 {
			scr_Boss_Stretch("Horizontal",0.5);
		} else {
			scr_Boss_Stretch("Horizontal",0.4);
		}
		
		var _dir = image_angle + 180 + 90;
		
		if active_attack = 2 || active_attack = 8 {
			bullet_type = obj_Basic_Red_Bullet;
		    bullet_sprite = spr_Glowy_Enemy_Shot;
		    bullet_count = 3;
		    bullet_spread = 20;	
		}
		if active_attack = 4 {
			bullet_type = obj_Sticky_Slide_Bullet;
		    bullet_sprite = spr_Sticky_Shot;
		    bullet_lifespan = 450;
			bullet_speed = bossbulletspeed * (0.75 + random(1.25));
		}
		if active_attack = 5 {
			bullet_type = obj_Rebound_Bullet;
			bullet_sprite = spr_Kylie_Shot;
			bullet_lifespan = 270;
			bullet_count = 3;
			bullet_spread = 40;	
			bullet_speed = bossbulletspeed * 2.75;
		}
		if active_attack = 7 {
			pattern_direction = scr_Angle_Converge(pattern_direction, scr_Soul_Point(), 30)
			_dir = pattern_direction;
		}
		if active_attack = 10 {
			bullet_sprite = spr_Big_Glowy_Shot;
		    bullet_speed = bossbulletspeed * 1.6;
		    bullet_power = bosspower * 1.5;
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
		}
		
		boss_radius = 0;
		bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 20)
	    boss_xoffset = lengthdir_x(50,image_angle);
	    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
	    scr_Boss_Shoot();

	    boss_xoffset = lengthdir_x(50,image_angle + 180);
	    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
	    scr_Boss_Shoot();
	
		
		if active_attack = 10 {
			
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Hot_Pink_Shot;
			bullet_part = 0;
			bullet_speed -= bossbulletspeed * 0.35;
		    bullet_power = bosspower * 1;
			
			if currentphase = 2 {
				bullet_count = 2;
				bullet_spread = 20;
			}
			
			boss_radius = 0;
			bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir + 30, 20)
		    boss_xoffset = lengthdir_x(50,image_angle);
		    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
		    scr_Boss_Shoot();

			bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir - 30, 20)
		    boss_xoffset = lengthdir_x(50,image_angle + 180);
		    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
		    scr_Boss_Shoot();
		}
	
	}
	
	if active_attack = 3 || active_attack = 6 {
	    bullet_sprite = spr_Big_Glowy_Shot;
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
		 
		if active_attack = 6 {
			bullet_speed = bossbulletspeed * 1.35;
	        bullet_power = bosspower * 2;
	        bullet_type = obj_Cross_Split_Bullet;
	        bullet_sprite = spr_Big_Cross_Split_Shot;
			bullet_lifespan = 105 + random(30);	
			
			bullet_part_color1 = make_color_rgb(125,255,0);
			bullet_part_color2 = make_color_rgb(125,255,0);
		}
		
	    scr_Soul_Shoot();
		scr_Sound_Effect(snd_Deep_Laser);
		
		bullet_part = 0;
		
		bullet_speed = bossbulletspeed;
		bullet_power = bosspower;
	
		bullet_type = obj_Basic_Bullet;
		bullet_sprite = spr_Glowy_Hot_Pink_Shot;
		bullet_count = 2;
		bullet_spread = 40;
		bullet_lifespan = 300;
		
		if active_attack = 6 {
	        bullet_sprite = spr_Glowy_Green_Shot;
		}
		
		if currentphase = 2 {
		    bullet_count = 4;
			bullet_spread = 30;	
		}
	
		//scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.1);
		
		scr_Soul_Shoot();
	}
	
	if active_attack = 9 {
		
		if pattern_count = pattern_count_max - 1 {
				
			bullet_type = obj_Beam_Bullet_v2
		    bullet_speed = 0;
		    bullet_size =  0.5;
		    bullet_count = 1;
		    bullet_spread = 0;
		    boss_radius = 0;
			bullet_power = 0
			bullet_lifespan = 120;
		    bullet_sprite = spr_Boss_Beam_Segment;
			bullet_part_color1 = make_color_rgb(255, 0, 0)
			bullet_part_color2 = make_color_rgb(255, 148, 127)
				
			scr_Spirit_Boss_BullFX_Pre();
			
			dir = -(bullet_spread * (bullet_count - 1) / 2);
				
			repeat(bullet_count) {
					
				bullet_direction = image_angle + 180 + 90;
				
				boss_xoffset = lengthdir_x(50, bullet_direction)
				boss_yoffset = lengthdir_y(50, bullet_direction)
					
				event_user(0)
					
				dir += bullet_spread;
			}
		}
		
		if pattern_count mod 10 = 0 {
			scr_Boss_Stretch("Horizontal",0.1);	
		}
		if pattern_count mod 30 = 0 and currentphase = 2 {
			var _dir = image_angle + 180 + 90;
			
			bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 20)
		    bullet_count = 2;
			bullet_spread = 60;
			bullet_lifespan = 300;
		    scr_Boss_Shoot();
		}
	}
	
	if active_attack = 11 {
	    bullet_sprite = spr_Big_Glowy_Shot;
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
		
		var _count = 8
		if currentphase = 2 {
			_count = 11;	
		}
		
		var _dir = scr_Boss_Bullet_Direction_Formula(image_angle + 270, 20);
		var _dirr = -45
		
		repeat(_count) {
		
			bullet_direction = _dir + _dirr
			
			bullet_speed = (bossbulletspeed * 3) / lengthdir_x(bossbulletspeed * 1, _dirr);
			scr_Boss_Shoot();
		 
			_dirr += 90 / (_count - 1);
		}
		
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


// Handles boss attack sprite animation
/*if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_wall_watcher_v2_cannon_shoot, _hold_frame, 3, 6, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
}  */
if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_deep_watcher_v2_drill_shoot, _hold_frame, 3, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_deep_watcher_v2_eye_shoot, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_deep_watcher_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
