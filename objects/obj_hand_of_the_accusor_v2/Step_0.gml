/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack != 2 {
	direction = scr_Angle_Converge(direction, scr_Soul_Point(x + 270, y), 10)
	speed = min(lerp(speed, bossmovespeed * 2, 0.1), scr_Soul_Distance(x + 270, y));
}
if active_attack = 2 and active_attack_delay > 0 {
	direction = scr_Soul_Point(x + 450, y)
	speed = min(lerp(speed, bossmovespeed * 3, 1), scr_Soul_Distance(x + 450, y));
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = 1;
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(8, 50, 50, 120, 30, 10);
		image_index = 0
		
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
		scr_Boss_Stretch("Vertical", 0.5);
		
		image_index = 4;
		
		x -= 25;
		direction = 180;
		speed = 12;
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(0, 30)
		attack_stats.bullet_sprite = "spr_red_bullet_v2"
		attack_stats.bullet_type = "obj_accel_right_converge_bullet"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_direction_angle = 1
		attack_stats.bullet_speed = bossbulletspeed * 1.6;
		attack_stats.bullet_acceleration = bossbulletspeed * 0.01
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 30;
		attack_stats.bullet_part_life = 21;
		attack_stats.bullet_part_color1 = make_color_rgb(255,0,124);
		attack_stats.bullet_part_color2 = make_color_rgb(255,0,124);
		attack_stats.bullet_part_frequency = 3;
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_direction += -40 + (80 * (pattern_count mod 2))
		attack_stats.bullet_speed = bossbulletspeed * 1.05;
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(30,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if x > ((room_width / 2) + 800) {
			x -= 1800;
			pattern_count = 0;
			active_attack_duration = 0
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
	if active_attack = 1 {
		active_attack = 2;
		scr_Boss_Attack_Time_Setup_v2(180, 60, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(0, bossmovespeed * 2, 6.5 * bossmovespeed);
	} else {
		active_attack = 0;
	}
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 3;
	scr_Force_Hold_Frame(3, 20)
	scr_Boss_Attack_Sprite_v2(spr_hand_of_the_accusor_v2_finger_blasts, -1, 1, 5, 0);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_hand_of_the_accusor_v2_finger_dash, _hold_frame, 3, 4, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_hand_of_the_accusor_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
