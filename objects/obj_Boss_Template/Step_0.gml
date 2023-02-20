/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

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
		scr_Boss_Attack_Time_Setup_v2(1, 40, 1, 120, 30, 10);
		
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
		
		bullet_direction = scr_Soul_Point()
		
		scr_Boss_Shoot();
	
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
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if activeAttack != 0 {
	var holdFrame = 1;
	scr_Boss_Attack_Sprite_v2(spr_Boss_Template_Attack, holdFrame, 2, 2, 20);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_Boss_Template;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
