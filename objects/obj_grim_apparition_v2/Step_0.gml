/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.7, 1, 0);

if active_attack = 0 {
	direction = scr_Soul_Point();
	speed = lerp(speed, bossmovespeed * 0.66, 0.05);
	
	y = scr_Converge(y, obj_Soul_Parent.perY, speed * 0.5);
} else {
	direction = scr_Soul_Point();
	speed = lerp(speed, bossmovespeed * 0.15, 0.1);	
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = 1;
	if abs(obj_Soul_Parent.y - y) < 150 and abs((room_height / 2) - y) < 150 {
		active_attack = 2	
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(9, 40, 10, 150, 30, 20);
		
		// Can set up the initial pattern direction
		pattern_direction = scr_Soul_Point()
		// patternDirection = random(360;
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(180, 40, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Round_To_Nearest(scr_Soul_Point(), 180), 0, 4.3 * bossmovespeed);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

attack_stats.bullet_sprite = "spr_pointy_red_bullet_v2"
attack_stats.bullet_type = "obj_accel_bullet_v2"
attack_stats.bullet_acceleration = 0.035 * bossbulletspeed;

attack_stats.bullet_part = 1;
attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
attack_stats.bullet_part_area = 30;
attack_stats.bullet_part_life = 16;
attack_stats.bullet_part_color1 = make_color_rgb(255,0,124);
attack_stats.bullet_part_color2 = make_color_rgb(255,0,124);
attack_stats.bullet_part_frequency = 3;

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 30)
		attack_stats.bullet_count = 1;
		attack_stats.bullet_speed = bossbulletspeed * (1 + random(0.5));
		
		pattern_direction = scr_Angle_Converge(pattern_direction, scr_Soul_Point(), 10)
		
		if pattern_count = 1 {
			scr_Boss_Stretch("Vertical", 0.4);
			
			attack_stats.bullet_count = 8;
			attack_stats.bullet_spread = 20;
			attack_stats.bullet_speed = bossbulletspeed * 0.95;
		}
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(30,15);
		
		speed = dash_speed;
        direction = dash_direction;
		scr_Room_Loop_Square()
		
		if pattern_count mod 10 = 0 {
			attack_stats.bullet_count = 1;
			attack_stats.bullet_speed = bossbulletspeed * (0.1 + random(0.5));
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(choose(135, 225), 15)
			
			scr_boss_shoot_v2();
		}
		
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
	var _hold_frame = [2, 3];
	scr_Boss_Attack_Sprite_v2(spr_grim_apparition_v2_barrage, _hold_frame, 4, 5, 20);
	if image_index >= 2 and image_index < 4 {
		scr_Boss_Wobble("Horizontal", 3, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = [2, 3];
	scr_Boss_Attack_Sprite_v2(spr_grim_apparition_v2_dash, _hold_frame, 4, 5, 20);
	if image_index >= 2 and image_index < 4 {
		scr_Boss_Wobble("Horizontal", 3, 0.4, 0)	
	}
} else {
	sprite_index = spr_grim_apparition_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
