/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// Make boss shape wobble:
speed = lerp(speed, bossmovespeed * 1.4, 0.05);
direction = scr_Angle_Converge(direction, scr_Soul_Point() + scr_Wave(-75, 75, 4, 0), 3);

if active_attack = 2 and active_attack_delay < 0 {
	scr_Boss_Wobble("Horizontal", 2.1, 0.3, 0);
	speed = lerp(speed, bossmovespeed * 0.05, 0.25);
} else {
	scr_Boss_Wobble("Horizontal", 1, 0.6, 0);
}

if scr_wall_bounce_v2(900, 8) {
	dash_direction = direction;
	//x += lengthdir_x(speed * 5, direction)
	//y += lengthdir_y(speed * 5, direction)
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 1, 2);
	
	// Sneeze
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(40, 30, 1, 210, 60, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point() + 180, 0, 5 * bossmovespeed);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// The Long Nose Blow
	if active_attack = 2 {
		// 
		//scr_Boss_Attack_Time_Setup_v2(270, 30, 1, 210, 60, 10);
		scr_Boss_Attack_Time_Setup_v2(1, 30, 1, 210, 60, 240);
		
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point() + 180, 0, 5 * bossmovespeed);
    }
}

if global.roomtime mod 3 = 1 {
	scr_default_attack_settings_v2();	
	attack_stats.bullet_type = "obj_stationary_damager_v2"
	attack_stats.bullet_sprite = "spr_Poison_Pool"
	attack_stats.boss_xoffset = -40 + random(80);
	attack_stats.boss_yoffset = -40 + random(80) + 40 + boss_height;
	attack_stats.bullet_depth = depth + 100;
	attack_stats.bullet_life_span = 180 + random(60);
	attack_stats.bullet_size = (0.3 + random(0.15));
	attack_stats.bullet_speed = 0;
	
	scr_boss_shoot_v2();
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction
		
		scr_Jump_Movement_v2(2);	
		
		if pattern_count = floor(pattern_count_max) {
			scr_Boss_Stretch("Vertical", 1);
			attack_stats.bullet_sprite = "spr_booger_bullet"
			attack_stats.bullet_count = 1;
			attack_stats.bullet_type = "obj_booger_bullet"
		
			repeat(6) {
				attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 60)
				attack_stats.bullet_speed = bossbulletspeed * (1 + random(1))
				attack_stats.bullet_life_span = 360 + random(90);
				attack_stats.bullet_bounce_speed = 4 + random(2);
				attack_stats.bullet_lob_time = 50 + random(20);
				
				scr_boss_shoot_v2();
			}
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		
		attack_stats.bullet_count = 3;
		attack_stats.bullet_spread = 120;
		attack_stats.bullet_direction = random(360);
		attack_stats.bullet_speed = bossbulletspeed * (2 + random(0.3))
		
		attack_stats.bullet_type = "obj_spinning_snot_trail_v2"
		attack_stats.angular_velocity = 1.5;
		attack_stats.bullet_life_span = 240;
		
		scr_boss_shoot_v2();
		/*scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		dash_direction = scr_Angle_Converge(direction, scr_Soul_Point() + scr_Wave(75, 75, 1, 0), 3) */
		
		//scr_Jump_Movement_v2(2);	
		
		//if pattern_count = floor(pattern_count_max) {
		//	attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
		//	scr_boss_shoot_v2();
		//}
	}
	
	if active_attack = 3 {
	
		minion_count = 1;
		minion_type = obj_Minion_Template;
		minion_health = bossmaxhealth / 10;
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn();
	
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
scr_Boss_Size_Lerp_Dir(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_smell_ghoul_sneeze, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_smell_ghoul_blow, _hold_frame, 3, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_smell_ghoul;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
