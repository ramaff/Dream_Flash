/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

direction = scr_Soul_Point() + scr_Wave(-90, 90, 4, 0);
speed = bossmovespeed

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, -10);
		
		scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
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

		bullet_type = obj_Smart_Home_Bullet;
		bullet_sprite = spr_Glowy_Teal_Shot;
		bullet_lifespan = 420;
		
		bullet_speed = bossbulletspeed * (1.15 + random(0.15));
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
        bullet_count = 2;
        bullet_spread = 180;
        scr_Boss_Shoot();
		
		repeat(3) {
			bullet_speed += bossbulletspeed * 0.35;
			bullet_direction -= 20 + random(40)
			scr_Boss_Shoot();
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(2);	
		
		if pattern_count = floor(pattern_count_max) {
			bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
			scr_Boss_Shoot();	
		}
	}
	
	// Maybe I should put this into a script
    pattern_count -= 1;
    pattern_cooldown += pattern_cooldown_max;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Post
//////////////////////////////////////////////////////////////////////////////////////////

if currentphase = finalphase and split = 0 {
    split = 1;
    with instance_create(x,y, obj_wandering_wisper_v2) {
		difficulty = other.difficulty / 2;
        champ = other.champ + 0.1;
        boost = other.boost;
        global.bosscount += 1;
		scr_Boss_Stats_Setup(2);
		difficulty = Floor_Layout_Control.Flash[global.currentroom,24] / 2;
    }
	with instance_create(x,y, obj_relentless_wisper_v2) {
		difficulty = other.difficulty / 2;
        champ = other.champ + 0.2;
        boost = other.boost;
        global.bosscount += 1;
		scr_Boss_Stats_Setup(2);
		
		difficulty = Floor_Layout_Control.Flash[global.currentroom,24] / 2;
    }
	difficulty = 0;
	instance_destroy();
}

if active_attack_duration <= 0 { 
    active_attack = 0;
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_wisper_v2_shoot, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_wisper_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
