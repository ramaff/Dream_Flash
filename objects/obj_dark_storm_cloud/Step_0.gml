/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

direction = scr_Soul_Point()

if active_attack = 0 {
	speed = lerp(speed, bossmovespeed, 0.1)
} else if active_attack = 4 and pattern_count < pattern_count_max {
	speed = lerp(speed, -bossmovespeed * 1.5, 0.1)	
	direction = pattern_direction;
} else if active_attack = 5 and active_attack_delay > 0 {
	speed = lerp(speed, -bossmovespeed * 2, 0.1)	
	direction = dash_direction
} else {
	speed = lerp(speed, bossmovespeed * 0.2, 0.1)
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	if currentphase = 1 {
		active_attack = choose(1, 2, 3);
	} else {
		active_attack = choose(4, 5, 3);
	}
	if scr_Minion_Count(2) {
		if currentphase = 1 {
			active_attack = choose(1, 2);
		} else {
			active_attack = choose(4, 5);
		}
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
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(2, 50, 30, 180, 30, 10);
		
    }
	// Targeted wave shots
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 10, 180, 30, 20);
		
		pattern_direction = scr_Soul_Point()
    }
	// Dash into mega lightning
	if active_attack = 5 {
		// 
		scr_Boss_Attack_Time_Setup_v2(120, 50, 1, 30, 30, 10);
		
		//scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
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
	
	if active_attack = 3 {
	
		minion_count = 1;
		minion_type = obj_dark_storm_minion;
		minion_health = bossmaxhealth / 9;

		scr_Minion_Spawn();
	
	}
	
	if active_attack = 4 {
		bullet_type = obj_Wave_Bullet;
        bullet_sprite = spr_Water_Drop_Bullet;
        bullet_speed = bossbulletspeed * 2.5;
        bullet_count = 8;
        bullet_spread = 225 / bullet_count;
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 0.5)
		
		scr_Boss_Shoot();	
		
		//x -= lengthdir_x(20, bullet_direction)
		//y -= lengthdir_y(20, bullet_direction)
	}
	
	if active_attack = 6 {
	
		if pattern_count = pattern_count_max - 1 {
				
			bullet_type = obj_Beam_Bullet_v2
		    bullet_sprite = spr_Lightning_Beam;
		    bullet_speed = 0;
		    bullet_size = 1.25 / 2;
		    bullet_count = 4;
		    bullet_spread = 90;
		    boss_radius = 0;
			bullet_power = 0
			bullet_lifespan = 240;
		    bullet_sprite = spr_Lightning_Beam_Segment;
			if image_index > 3 and pattern_count_max - pattern_count < 30 {
				image_index = 3;	
			}
				
			scr_Spirit_Boss_BullFX_Pre();
	
			var dir = 45 - (bullet_spread * (bullet_count - 1) / 2);
		
			var bull = bullet_type;
			var _seg_size = 80;

			var _streak_count = 0;
				
			repeat(bullet_count) {
					
				var xx = x + boss_xoffset;
				var yy = y + boss_yoffset;
					
				_streak_count += 1;
					
				var _zag = -0.5 + irandom(1);
					
				bullet_direction = dir + (90 * _zag)
					
				for(var _count = 0; _count < 17; _count++) {
					_seg_size = 80;
					with instance_create(xx, yy, bull) {
					    scr_Bullet_Shoot_Properties();
						bulletpower = 0;
							
						if _count = 0 {
							sprite_index = spr_Lightning_Beam_Start;
						}
						if _count = 16 {
							sprite_index = spr_Lightning_Beam_Tail;
							depth -= 1;
						}
						if scr_Chance(3) {
							if _zag = -0.5 {
								_zag = 0.5;
								image_yscale = -image_yscale;
							} else if _zag = 0.5 {
								_zag = -0.5;
							}
							x += lengthdir_x(_seg_size / 2, other.bullet_direction)
							y += lengthdir_y(_seg_size / 2, other.bullet_direction)
							xx = x;
							yy = y;
							sprite_index = spr_Lightning_Beam_Turn;
						}
					    //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
						direction = other.bullet_direction;
						image_angle = direction;
						scr_Spiritual_Stats_Boss_Bullet_Effects();
					}
					bullet_direction = dir + (90 * _zag)
					xx += lengthdir_x(_seg_size, bullet_direction)
					yy += lengthdir_y(_seg_size, bullet_direction)
				}
					
				dir += bullet_spread;
			}
				
		} else {
			
			with obj_Beam_Bullet_v2 {
				if bulletorigin = other.id {
					x += other.x - other.stored_x;
					y += other.y - other.stored_y;
				}
			}
				
			stored_x = x;
			stored_y = y;
				
		}
			
		if pattern_count mod 30 = 0 {
			bullet_count = 8;
			bullet_spread = 45;
			bullet_direction = 0;
			if pattern_count mod 60 = 0 {
				bullet_direction += 22.5;	
			}
			bullet_type = obj_Zig_Zag_Bullet;
			bullet_sprite = spr_Lightning_Bullet;
			bullet_lifespan = 240;
			bullet_speed = bossbulletspeed * 2.9;
		
			scr_Boss_Shoot();
		}
	
	}
	
	if active_attack = 5 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count = 1 {
			active_attack = 6
			scr_Boss_Attack_Time_Setup_v2(240, 30, 1, 120, 120, 10);
			pattern_direction = random(360);
			
			stored_x = x;
			stored_y = y;
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

image_angle = scr_Wave(-10, 10, 3, 0)

// Go back to normal default size
if sprite_index = spr_dark_storm_cloud_mouth_mood {
	scr_Boss_Size_Lerp_Dir(0.15, true);
} else {
	scr_Boss_Size_Lerp(0.15)
}

// Handles boss attack sprite animation
if active_attack = 3 || active_attack = 5 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_dark_storm_cloud_mouth_mood, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 1 || active_attack = 2 || active_attack = 4 {
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
