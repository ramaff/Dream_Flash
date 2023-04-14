/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if activeAttackDelay <= 0 and activeAttackCooldown <= 0 and activeAttackDuration <= 0 {
    
	// Pick a random attack to do
	activeAttack = choose(1);
	
    if activeAttack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, -10);
		
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
		if patternCount = 1 {
			scr_Boss_Stretch("Horizontal", 1);
			
			bullet_type = obj_Lob_Bullet;
			bullet_sprite = spr_Glowy_Purple_Shot;
			
			repeat(3) {
				bullet_bounce_speed = 3 + random(3);
				bullet_lob_time = 50 + random(30);
				bullet_lifespan = bullet_lob_time + 2;
				bullet_speed = bossbulletspeed * (1 + random(0.5));
			
				bullet_direction = random(360);
				scr_Boss_Shoot();
			}
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
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if activeAttack != 0 {
	var holdFrame = 1;
	scr_Boss_Attack_Sprite_v2(spr_Slime_Minion_Hop, holdFrame, 2, 2, 20);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_Slime_Minion;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
