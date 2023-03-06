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
		scr_Boss_Attack_Time_Setup_v2(50, 40, 1, 30, 30, -10);
		
		scr_Boss_Jump_Setup_v2(0, 10 * bossmovespeed, x, y);
		
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
		
		boss_xoffset = 0;
		boss_yoffset = -40;
		bullet_direction = scr_Soul_Point();
		direction = bullet_direction;
		
		scr_Boss_Shoot();
	
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
			
			scr_Boss_Shoot();
			
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
		bullet_direction = scr_Soul_Point();
		direction = bullet_direction;
		
		scr_Boss_Shoot();
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if activeAttack = 4 {
		
		if patternCount = 1 {
			
			scr_Boss_Stretch("Horizontal", 1.5);
			
			boss_yoffset = 20;
			
			bullet_direction = scr_Soul_Point();
			bullet_count = 3;
			bullet_spread = 90;
			
			scr_Boss_Shoot();
			
			scr_Screen_Shake(3,5);
		}
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dashSpeed;
        direction = dashDirection;
		
		scr_Jump_Movement_v2(3);
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
	scr_Boss_Attack_Sprite_v2(spr_Amorphous_Jello_Hop, holdFrame, 6, 6, 60);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_Amorphous_Jello;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
