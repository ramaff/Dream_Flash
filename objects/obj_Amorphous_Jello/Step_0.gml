/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
if activeAttack = 0 {
	scr_Boss_Wobble("Horizontal", 0.6, 1, 0);
	speed = bossmovespeed;
	direction = scr_Soul_Point();
} 

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if activeAttackDelay <= 0 and activeAttackCooldown <= 0 and activeAttackDuration <= 0 {
    
	speed = 0;
	// Pick a random attack to do
	activeAttack = choose(1, 2, 3);
	
	if currentphase = 2 {
		activeAttack = 4;	
	}
	
    if activeAttack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(4, 40, 30, 120, 30, 30);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	if activeAttack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(80, 40, 1, 120, 30, 0);
		
		scr_Boss_Jump_Setup_v2(0, 12.5 * bossmovespeed, x, y);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	if activeAttack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 40, 1, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	if activeAttack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(80, 40, 1, 30, 30, 0);
		
		scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		
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
if activeAttackDelay <= 0 and patternCooldown <= 0 and patternCount > 0 {
   
    if activeAttack = 1 {
		scr_Boss_Stretch("Vertical", 0.7);
		
		bullet_direction = scr_Soul_Point();
		bullet_direction += (-30 + random(60)) / bossaccuracy;
		bullet_type = obj_Jelly_Bullet;
		bullet_sprite = spr_Lob_Shot;
		bullet_speed = bossbulletspeed * 2;
		direction = bullet_direction;
		var face_direction = round(direction / 180) * 180
		bullet_lifespan = 127;
		
		boss_yoffset = -70;
		if face_direction = 0 {
			boss_xoffset = 10;
		} else {
			boss_xoffset = -10;
		}
		
		if champ = 0 {
			scr_Boss_Shoot();
		}
		if champ = 1 {
			bullet_type = obj_Poison_Jelly_Bullet;
			bullet_sprite = spr_Poison_Lob_Shot;
			repeat(3) {
				bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 75)
				bullet_speed = bossbulletspeed * (1 + random(0.6) + ((patternCountMax - patternCount) / 3))
				scr_Boss_Shoot();
			}
		}
		if champ = 2 {
			bullet_type = obj_Bubble_Bullet;
			bullet_sprite = spr_Pink_Bubble_Bullet;
			repeat(5) {
				bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 75)
				bullet_speed = bossbulletspeed * (1.5 + random(0.8) + ((patternCountMax - patternCount) / 3))
				scr_Boss_Shoot();
			}
		}
		if champ = 8 {
			bullet_type = obj_Tar_Ball_Bullet;
			bullet_sprite = spr_Tar_Lob_Shot;
			
			bullet_bounce_speed = 4 + random(4);
			bullet_lob_time = 60 + random(30);
			bullet_lifespan = bullet_lob_time + 2;
			
			repeat(2) {
				bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 75)
				bullet_speed = bossbulletspeed * (1 + random(0.3) + ((patternCountMax - patternCount) / 2.5))
				scr_Boss_Shoot();
			}
		}
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if activeAttack = 2 {
		
		if patternCount = 1 {
			
			scr_Boss_Stretch("Horizontal", 1.5);
			
			boss_yoffset = 20;
			
			bullet_direction = 45;
			bullet_count = 4;
			bullet_spread = 90;
			
			bullet_type = obj_Jelly_Bullet_Straight;
			bullet_sprite = spr_Lob_Shot;
			bullet_speed = bossbulletspeed * 1.5;
			bullet_lifespan = 86;
			
			if champ = 0 {
				scr_Boss_Shoot();
			}
			if champ = 1 {
				bullet_count = 1;
				bullet_sprite = spr_Poison_Lob_Shot;
				repeat(6) {
					bullet_speed = bossbulletspeed * (1 + random(1));
					bullet_direction = random(360);
					
					scr_Boss_Shoot();
				}
			}
			if champ = 2 {
				bullet_type = obj_Bubble_Bullet;
				bullet_sprite = spr_Pink_Bubble_Bullet;	
				bullet_lifespan = 150;
				
				var add = 0
				repeat(4) {
					bullet_speed = bossbulletspeed * (1.5 + add + random(0.5));
					bullet_direction = scr_Boss_Bullet_Direction_Formula(45, 40);
					scr_Boss_Shoot();
					add += 0.35;
				}
			}
			if champ = 8 {
				bullet_count = 6;
				bullet_type = obj_Tar_Jelly_Bullet_Straight
				bullet_sprite = spr_Tar_Lob_Shot;
				
				bullet_lob_time = 60;
				bullet_lifespan = 62;
				
				bullet_spread = 60;
					
				scr_Boss_Shoot();
			}
			
			scr_Screen_Shake(7,5);	
		}
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dashSpeed;
        direction = dashDirection;
		
		var dir = scr_Soul_Point(x, y + bossHeight);
		var dist = scr_Soul_Distance(x, y + bossHeight);
		var aimspeed = min(5, dist);
		x += lengthdir_x(aimspeed, dir);
		y += lengthdir_y(aimspeed, dir);
		
		scr_Jump_Movement_v2(5);
	}
	
	if activeAttack = 3 {
		scr_Boss_Stretch("Vertical", 0.7);
		
		boss_xoffset = 0;
		boss_yoffset = -40;
		
		bullet_type = obj_Jello_Spawning_Bullet;
		bullet_count = 1;
		bullet_lob_time = 45 + random(30);
		bullet_lifespan = bullet_lob_time + 2;
		bullet_bounce_speed = 3 + random(2);
		bullet_sprite = spr_Slime_Minion_Hop;
		
		if champ = 1 {
			bullet_type = obj_PJello_Spawning_Bullet;
		}
		if champ = 2 {
			bullet_type = obj_BBJello_Spawning_Bullet;	
		}
		if champ = 8 {
			bullet_type = obj_BJello_Spawning_Bullet;	
		}
		
		repeat(3) {
			bullet_direction = random(360);
			scr_Boss_Shoot();
		}
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if activeAttack = 4 {
		
		if patternCount = 1 {
			
			scr_Boss_Stretch("Horizontal", 1.5);
			
			boss_yoffset = 20;
			
			//bullet_direction_base = scr_Soul_Point();
			bullet_count = 1;
			
			bullet_type = obj_Jelly_Bullet;
			bullet_sprite = spr_Lob_Shot;
			bullet_lifespan = 62;
			bullet_lob_time = 60;
			bullet_bounce_speed = 4;
			
			if champ = 0 || champ = 8 {
				champ = 8 {
					bullet_type = obj_Tar_Jelly_Bullet_Straight
					bullet_sprite = spr_Tar_Lob_Shot;	
				}
				repeat(3) {
					bullet_bounce_speed = 4 + random(2);
					bullet_lob_time = 45 + random(25);
					bullet_lifespan = bullet_lob_time + 2;
					
					bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 120)
					bullet_speed = bossbulletspeed * (1 + random(1))
					scr_Boss_Shoot();
				}
			}
			if champ = 1 {
				bullet_type = obj_Poison_Jelly_Bullet;
				bullet_sprite = spr_Poison_Lob_Shot;
				repeat(8) {
					bullet_bounce_speed = 4 + random(4);
					bullet_lob_time = 60 + random(30);
					bullet_lifespan = bullet_lob_time + 2;
					
					bullet_direction = random(360);
					bullet_speed = bossbulletspeed * (1 + random(1));
					scr_Boss_Shoot();
				}
			}
			if champ = 2 {
				bullet_type = obj_Bubble_Bullet;
				bullet_sprite = spr_Pink_Bubble_Bullet;
				bullet_lifespan = 150;
				repeat(10) {
					bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 180)
					bullet_speed = bossbulletspeed * (1.6 + random(1.3))
					scr_Boss_Shoot();
				}
			}
			
			scr_Screen_Shake(3,5);
		}
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dashSpeed;
        direction = dashDirection;
		
		scr_Jump_Movement_v2(2);
	}
	
	// Maybe I should put this into a script
    patternCount -= 1;
    patternCooldown += patternCooldownMax;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Post
//////////////////////////////////////////////////////////////////////////////////////////

if activeAttackDuration <= 0 { 
    activeAttack = 0;
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp_DirAlt(0.15);

// Handles boss attack sprite animation
if activeAttack = 1 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Amorphous_Jello_Shoot, holdFrame, 3, 5, 40);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if activeAttack = 2 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Amorphous_Jello_Slam, holdFrame, 6, 6, 50);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if activeAttack = 3 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Amorphous_Jello_Summon, holdFrame, 3, 3, 20);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if activeAttack = 4 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Amorphous_Jello_Hop, holdFrame, 5, 5, 60);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_Amorphous_Jello;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
