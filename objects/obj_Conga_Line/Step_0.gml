/// @description  Boss Step Event

if currentphase = 1 {
	if instance_exists(followtarget) {
		if point_distance(x, y, followtarget.x, followtarget.y) > 100 {
			direction = point_direction(x, y, followtarget.x, followtarget.y);
			speed = followtarget.speed;
		}
		//if followtarget.currentphase = 2 {
		//	followtarget = noone;
		//} else {
		if followtarget.currentphase = 1 {
			activeAttackCooldown = followtarget.activeAttackCooldown	
		}
		//}
 	} else {
		var xdis = abs(x - obj_Soul_Parent.perX);
		var ydis = abs(y - obj_Soul_Parent.perY);
		var dist = scr_Soul_Distance();
		if speed = 0 or xdis < 20 or ydis < 20 or dist > 500 {
			direction = round(scr_Soul_Point() / 90) * 90;
		}
		var speedtar = bossmovespeed * (1 + (dist / 400));
		speed = lerp(speed, speedtar, 0.02);
	}
} else {
	var original_target = followtarget
	with obj_Conga_Line {
		if followtarget == other.id {
			followtarget = original_target;	
		}
	}
}

if activeAttack = 1 {
	speed = 0;
}
if currentphase = 2 and activeAttackDelay > 0 {
	speed = 0;	
}

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
if activeAttack = 0 {
	scr_Boss_Wobble("Horizontal", 0.3, 1, 0);
}

if currentphase = 2 {
	activeAttackCooldown = 0;
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if activeAttackDelay <= 0 and activeAttackCooldown <= 0 and activeAttackDuration <= 0 {
    
	// Pick a random attack to do
	activeAttack = choose(1);
	
	if currentphase = 2 {
		activeAttack = 2;	
	}
	
    if activeAttack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(120, 40, 1, 240, 60, 20);
		scr_Boss_Jump_Setup_v2(0, 0 * bossmovespeed, x, y);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	
	if activeAttack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(120, 40, 1, 30, 0, 480);
		scr_Boss_Jump_Setup_v2(0, 12.5 * bossmovespeed, x, y);
		
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
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dashSpeed;
        //direction = dashDirection;
		
		scr_Jump_Movement_v2(2.5);
		
		if patternCount = 1 {
		
			scr_Boss_Stretch("Horizontal", 1.5);
		
			bullet_direction = direction
			bullet_count = 2;
			bullet_spread = 180;
			bullet_speed = bossbulletspeed * 1.65;
		
			scr_Boss_Shoot();
		}
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if activeAttack = 2 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dashSpeed;
        direction = dashDirection;
		
		scr_Jump_Movement_v2(2.5);
		
		if patternCount = 1 {
		
			scr_Boss_Stretch("Horizontal", 1.5);
		
			bullet_direction = random(360);
			bullet_count = 6;
			bullet_spread = 60;
			
			bullet_speed = bossbulletspeed * 1.75;
		
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
	var holdFrame = 1;
	scr_Boss_Attack_Sprite_v2(spr_Conga_Line_Hop, holdFrame, 4, 4, 110);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
	if image_index = 5 {
		scr_Boss_Stretch("Vertical", 0.8);	
	}
} else if activeAttack = 2 {
	var holdFrame = 1;
	scr_Boss_Attack_Sprite_v2(spr_Conga_Line_Twirl, holdFrame, 2, 4, 300);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
	if patternCount <= 1 {
		image_index = 5;
		speed = 0;
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_Conga_Line;
	/*
	switch(conga_type) {
		case "normal":
			sprite_index = spr_Conga_Line_v2;
			break;
		case "angry":
			sprite_index = spr_Conga_Line_v2_Angry;
			break;
		case "shades":
			sprite_index = spr_Conga_Line_v2_Cool;
			break;
		case "dope":
			sprite_index = spr_Conga_Line_v2_Dope;
			break;
		case "dopey":
			sprite_index = spr_Conga_Line_v2_Dopey;
			break;
		default:
			sprite_index = spr_Conga_Line_v2;
			break;
	} */
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
