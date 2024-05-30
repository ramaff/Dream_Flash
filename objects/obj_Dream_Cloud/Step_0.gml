/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

boss_height = max(50, boss_height)

if active_attack = 2 {
	boss_height += 2;
	y -= 2;
}

boss_height = lerp(boss_height, 60, 0.02)


// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

speed = speed * 0.98

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
	if champ = 1 {
		active_attack = 2	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		var _attack_count = 18;
		var _attack_space = 10
		if champ = 2 {
			_attack_space = 20;	
		}
		scr_Boss_Attack_Time_Setup_v2(_attack_count, 30, _attack_space, 120, 120, 30);
		//pattern_direction = 45 + (irandom(4) * 90)
		direction = scr_Soul_Point();
		speed = bossmovespeed * 0.5;
		pattern_direction = direction + 180;
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(20, 30, 10, 90, 90, 30);
		//pattern_direction = 45 + (irandom(4) * 90)
		direction = scr_Soul_Point(x, y - 50);
		speed = bossmovespeed * 0.5;
		pattern_direction = 270;
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	
}


//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

bullet_type = obj_Rain_Drop_Bullet;
bullet_sprite = spr_Tear_Drop_Bullet;
bullet_speed = bossbulletspeed * (0.75 + random(0.5));
bullet_power = bosspower;

if champ = 2 {
	bullet_type = obj_Zig_Zag_Bullet;
	bullet_sprite = spr_Lightning_Bullet;
	bullet_speed -= bossbulletspeed * 0.5;
}

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.1)
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 30)
		scr_Boss_Shoot()
		speed += 1.25 * bossmovespeed;
		direction = scr_Angle_Converge(direction, scr_Soul_Point(), 5)
		
		if champ = 2 {
			if pattern_count mod 6 = 0 {
				direction += 45
			}
			if pattern_count mod 6 = 3 {
				direction -= 45
			}
			speed += 2 * bossmovespeed;
		}
		pattern_direction = direction + 180;
		
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 0.1)
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 30)
		bullet_type = obj_Lob_Direction_Bullet
		bullet_speed = 0.01;
		
		bullet_bounce_speed = 0;
		bullet_bounce_gravity = 0.1;
		bullet_lifespan = sqrt((2 * (boss_height + 150)) / bullet_bounce_gravity);
		bullet_lob_time = bullet_lifespan - 2;
		bullet_bounce_Y = boss_height + 150;
		
		scr_Boss_Shoot()
		speed += 1.25 * bossmovespeed;
		direction = scr_Angle_Converge(direction, scr_Soul_Point(x, y - 50), 15)
		
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
if active_attack != 0 and image_index >= 3 and image_index < 5 {
	scr_Boss_Size_Lerp_Dir(0.15, false);
} else {
	scr_Boss_Size_Lerp(0.15);
}

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_dream_cloud_tears_of_joy, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_dream_cloud;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
