/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack = 0 {
	direction = scr_Soul_Point();
	speed = bossmovespeed * 0.5;
} else if active_attack != 2 {
	direction = scr_Soul_Point();
	speed = bossmovespeed * 0.05;
}

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	if scr_Minion_Count() {
		active_attack = choose(1, 2)	
	}
	
	// Triple Spin Shots
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 50, 45, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Multi Portal Hop
    if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 150, 130, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Cheeky Pocket Spawns
    if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 50, 30, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Triple Portal Soul Array Shots
    if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 50, 45, 120, 30, 10);
		
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
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 270)
		
		bullet_speed = bossbulletspeed * 1;
		bullet_power = bosspower * 2;
		bullet_type = obj_Portal_Spinner;
        bullet_sprite = spr_Portal_Shot;
		bullet_count = 1;
		
		if champ = 1 {
			bullet_count = 2;
			bullet_spread = 120;
		}
		
		scr_Boss_Shoot();

	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
		boss_xoffset = -50;
		boss_yoffset = -100;
		if facing_direction = -1 {
			boss_xoffset = 50;
		}
		
		bullet_speed = bossbulletspeed * 2.25;
		bullet_power = bosspower;
		bullet_count = 7;
        bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_spread = 20;
		
		scr_Boss_Shoot();

	}
	
	if active_attack = 3 {
		scr_Boss_Stretch("Vertical", 1);
		
        bullet_speed = bossbulletspeed * 1.5;
		
		bullet_type = obj_Portal_Portal;
		if champ = 1 {
			bullet_type = obj_Popcorn_Portal;	
		}
		if champ = 2 {
			bullet_type = obj_Trash_Portal;	
		}
		bullet_sprite = spr_Portal_Shot;
		bullet_lifespan = 120;
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
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

/*
var _mir = false;

if active_attack = 2 and pattern_count mod 2 = 0 {
	_mir = true;	
} */

// Go back to normal default size
scr_Boss_Size_Lerp_Dir(0.15, false);

// Handles boss attack sprite animation
if active_attack == 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pocket_v2_shoot, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack == 2 {
	scr_Boss_Attack_Sprite_v2(spr_pocket_v2_springy, -1, 9, 21, 90);
	if image_index = 15 {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
	if image_index = 9 {
		scr_Boss_Teleport_From_Boss(150, 0)
		if y > obj_Soul_Parent.y {
			y += 150;
		}
		direction = scr_Soul_Point()
		speed = 0.01;
	}
} else if active_attack == 3 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_pocket_v2_cheeky, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_pocket_v2;
}



// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
