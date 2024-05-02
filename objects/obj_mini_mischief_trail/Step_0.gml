/// @description  Boss Step Event

if !instance_exists(minionbossparent) {
	instance_destroy()
}

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

if timer < 105 {
	speed -= speed * 0.01;
} else if instance_exists(minionbossparent) {
	speed += bossmovespeed / 90;
	direction = scr_Angle_Converge(direction, point_direction(x,y,minionbossparent.x, minionbossparent.y), speed / 2)
}
timer++;

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 40, 1, 30, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

if timer <= 1 {
	follow_id = id	
} else if timer < 5 {
	bullet_sprite = spr_Glowy_Pink_Shot;

	with(obj_Follow_The_Leader_Bullet) {
		if target = other.follow_id {
			other.follow_id = id
		}
	}

	bullet_direction = 0;
	bullet_speed = 0;
	bullet_lifespan = 9999;
	bullet_type = obj_Follow_The_Leader_Bullet;
	bullet_target = follow_id
		
	scr_Boss_Shoot();
}

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		
		bullet_sprite = spr_Glowy_Pink_Shot;
	
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		bullet_speed = (bossbulletspeed) + (speed / 2);
		
		scr_Boss_Shoot();	
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

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_mini_mischief_attack, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_mini_mischief;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
