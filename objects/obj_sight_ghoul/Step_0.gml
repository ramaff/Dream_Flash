/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 0 {
	direction = scr_Soul_Point() + 180 + scr_Wave(-60, 60, 2, 0) + 45;
	speed = lerp(speed, bossmovespeed, 0.1);
} else if active_attack = 1 {
	direction = scr_Soul_Point() + 180;
	speed = lerp(speed, bossmovespeed * 0.25, 0.05);	
}


if scr_Soul_Distance() > 300 {
	image_alpha = lerp(image_alpha, 0, 0.05);	
} else {
	image_alpha = lerp(image_alpha, 1, 0.25);	
}


if scr_Outside_Check_Bool(256) {
	var _new_pos = scr_Boss_Teleport_v2_Return(-256, -1, 300)
	x = _new_pos[0]
	y = _new_pos[1]
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	active_attack = 1;
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(10, 40, 40, 180, 80, 20);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		image_index = 3;
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_red_bullet_v2"
		attack_stats.bullet_type = "obj_peek_a_bullet"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_spread = 15;
		attack_stats.bullet_alpha = 0;
		attack_stats.bullet_speed = bossbulletspeed * (0.9 + random(0.9));
		attack_stats.bullet_life_span = 360;
		
		if scr_Soul_Distance() < 300 {
			attack_stats.bullet_alpha = 1;	
		}
		
		var _x_mult = 1;
		
		if image_xscale < 0 {
			_x_mult = -1;	
		}
		
		var _xoffsets = [0, -5, 30, 55, 38]
		var _yoffsets = [-15, -50, -70, -40, -10]
		var _i;
		
		for(_i = 0; _i < 5; _i++) {
			var _index = _i mod 5;
		
			attack_stats.boss_xoffset = _xoffsets[_index] * _x_mult;
			attack_stats.boss_yoffset = _yoffsets[_index];
			scr_boss_shoot_v2();
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
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
			scr_boss_shoot_v2();
		}
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
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_sight_sense_shoot, _hold_frame, 2, 5, 30);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_sight_sense;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
