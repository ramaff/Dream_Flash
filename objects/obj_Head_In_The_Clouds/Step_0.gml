/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(20, 1, 0);

// Make boss shape wobble:
direction = scr_Soul_Point(x, y+150);
if activeAttack = 0 {
	scr_Boss_Wobble("Horizontal", 0.4, 1, 0);
	speed = bossmovespeed;
} else {
	speed = bossmovespeed * 0.1;
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if activeAttackDelay <= 0 and activeAttackCooldown <= 0 and activeAttackDuration <= 0 {
    
	// Pick a random attack to do
	if currentphase = 1 {
		if !scr_Minion_Count() {
			activeAttack = choose(1, 1, 2, 3);
		} else {
			activeAttack = choose(1, 1, 2);	
		}
	} else if currentphase = 2 {
		if !scr_Minion_Count() {
			activeAttack = choose(4, 4, 2, 3);
		} else {
			activeAttack = choose(4, 4, 2);	
		}
	}
	//activeAttack = 2;
	
	// Guided Halo Bullets
    if activeAttack = 1 {
		// Setup how many attacks per boss move, delay, etc
		var attack_count = 3;
		var attack_gap = 60;
		if tier = 1 || tier >= 3 {
			attack_count = 5;
			attack_gap = 40;
		}
		scr_Boss_Attack_Time_Setup_v2(attack_count, 40, attack_gap, 360, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Lightning Strikes
	if activeAttack = 2 {
		// Setup how many attacks per boss move, delay, etc
		var attack_count = 7;
		if tier = 1 || tier >= 3 {
			attack_count = 11;	
		}
		scr_Boss_Attack_Time_Setup_v2(attack_count, 90, 20, 180, 30, 0);
		lightning_xx = [0]
		lightning_yy = [0]
		var xxx = ((obj_Soul_Parent.perX - x) + ((room_width / 2) - x)) / 2;
		var yyy = ((obj_Soul_Parent.perY - y) + ((room_height / 2) - y)) / 2;
		for(var i = 0; i < 11; i++) {
			lightning_xx[i] = xxx - 400 + random(800);
			lightning_yy[i] = yyy - 400 + random(800);
		}
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Angel Heads
	if activeAttack = 3 {
		// Setup how many attacks per boss move, delay, etc
		var attack_count = 4 + tier;
		attack_gap = 30;
		if tier >= 2 {
			attack_gap = 20;
		}
		scr_Boss_Attack_Time_Setup_v2(attack_count, 40, attack_gap, 180, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Holy Smite Bounce Bomb
	if activeAttack = 4 {
		var ball_time = 180;
		if tier = 1 || tier >= 3 {
			ball_time = 300;	
		}
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(210, 30, 1, ball_time, 60, 10);
		
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
		
		boss_yoffset = 60
		bullet_direction = 270 - 120 + random(240);
		bullet_type = obj_Guided_Bullet_Halo_Bullet;
		bullet_speed = bossbulletspeed * (1.1 + patternCount * 0.45)
		bullet_lifespan = 300 + (patternCount * 60);
		if tier = 1 || tier >= 3 {
			bullet_lifespan = 330 + (patternCount * 40);
		}
		if tier >= 2 {
			bullet_type = obj_Guided_Bullet_Halo_Bullet_2;
		}
		bullet_sprite = spr_Glowy_Yellow_Shot;
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if activeAttack = 2 {
		scr_Boss_Stretch("Vertical", 0.7);
		
		bullet_type = obj_Boss_Sky_Lightning;
		bullet_sprite = spr_Boss_Sky_Lightning;
		bullet_lifespan = 15;
		bullet_size = 2;
		bullet_speed = 0;
		bullet_blend = make_color_rgb(255,255,100)
		
		if tier >= 2 {
			bullet_type = obj_Boss_Sky_Lightning_2;
		}
		
		for(var i = 0; i < 11; i++) {
			boss_xoffset = lightning_xx[i];
			boss_yoffset = lightning_yy[i];
			var dirr = scr_Soul_Point(x + boss_xoffset, y + boss_yoffset);
			lightning_xx[i] += lengthdir_x(40, dirr)
			lightning_yy[i] += lengthdir_y(40, dirr)
			scr_Boss_Shoot();
		}
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if activeAttack = 3 {
		minion_yy = 20
		minion_xx = -20 + random(40);
		minion_speed = 4;
		minion_dir = 90;
		minion_count = 1;
	    minion_type = obj_Angel_Head;
	    minion_health = 10 + (bossmaxhealth / 40);
		minion_defense = 0;
	    scr_Minion_Spawn();
	}
	
	if activeAttack = 4 {
		if patternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.075);
		}
		
		if patternCount = patternCountMax {
			 bullet_direction = 0;
		    bullet_count = 1;
		    bullet_spread = 0;
		    bullet_speed = bossbulletspeed * (1.4);
			bullet_type = obj_Holy_Bounce_Ball;
			bullet_bounce_speed = 3;
			bullet_lob_time = 60;
			bullet_lifespan = 182;
			if tier = 1 || tier >= 3 {
				bullet_lifespan = 302;	
			}
			if tier >= 2 {
				bullet_type = obj_Holy_Bounce_Ball_2;	
			}
			bullet_charged = true;
			bullet_sprite = spr_Holy_Ball;
			bullet_size = 0;
			boss_xoffset = 0;
			boss_yoffset = -100;
			
			scr_Boss_Shoot()
		}
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
scr_Boss_Size_Lerp_Dir(0.15);

// Handles boss attack sprite animation
if activeAttack = 1 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Head_In_The_Clouds_Mouth_Shoot, holdFrame, 3, 3, 20);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if activeAttack = 3 || activeAttack = 4 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Head_In_The_Clouds_Hard_Think, holdFrame, 3, 3, 20);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if activeAttack = 2 {
	var holdFrame = 2;
	scr_Boss_Attack_Sprite_v2(spr_Head_In_The_Clouds_Sky_Lightning, holdFrame, 3, 3, 20);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_Head_In_The_Clouds;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
