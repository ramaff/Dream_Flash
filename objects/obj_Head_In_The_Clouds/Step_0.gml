/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(10, 1, 0);

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
	activeAttack = choose(2);
	
	// Guided Halo Bullets
    if activeAttack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 40, 60, 300, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Lightning Strikes
	if activeAttack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(7, 90, 20, 180, 30, 0);
		lightning_xx = [0]
		lightning_yy = [0]
		var soul_x = obj_Soul_Parent.perX - x;
		var soul_y = obj_Soul_Parent.perY - y;
		for(var i = 0; i < 7; i++) {
			lightning_xx[i] = soul_x - 300 + random(600);
			lightning_yy[i] = soul_y - 300 + random(600);
		}
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Angel Heads
	if activeAttack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 40, 60, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Holy Smite Bounce Bomb
	if activeAttack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 40, 60, 120, 30, 10);
		
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
		bullet_direction = 240 + random(60);
		bullet_type = obj_Guided_Bullet_Halo_Bullet;
		bullet_speed = bossbulletspeed * (3 - (patternCount * 0.5))
		bullet_lifespan = 420;
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
		bullet_blend = c_yellow;
		
		for(var i = 0; i < 7; i++) {
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
