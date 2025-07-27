/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 0.5, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.5, 0.5, 0);

var _angular_velocity = 0.1 + (200 / (100 + scr_Soul_Distance()))

target_angle += _angular_velocity;

target_x = obj_Soul_Parent.perX + lengthdir_x(250, target_angle)
target_y = obj_Soul_Parent.perY + lengthdir_y(250, target_angle)

speed = min(bossmovespeed * 0.5 * _angular_velocity, point_distance(x, y, target_x, target_y))
direction = point_direction(x, y, target_x, target_y)

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 180, 120, 30);
		
		// Can set up the initial pattern direction
    }
	
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(4, 50, 60, 180, 120, 0);
		
		// Can set up the initial pattern direction
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
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_type = "obj_wave_bullet_v2"
		attack_stats.bullet_sprite = "spr_Glowy_Blue_Shot"
		attack_stats.wave_strength = 6;
		attack_stats.wave_time = 45;
		attack_stats.bullet_count = 5;
		attack_stats.bullet_spread = 45;
		attack_stats.bullet_speed = bossbulletspeed * (1.75 + random(0.1))
		attack_stats.follow_bullets = 2;
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 30;
		attack_stats.bullet_part_life = 15;
		attack_stats.bullet_part_color1 = make_color_rgb(0, 184, 255);
		attack_stats.bullet_part_color2 = attack_stats.bullet_part_color1
		attack_stats.bullet_part_frequency = 4;
		
		scr_boss_shoot_v2();
	
	}
	
	if active_attack = 2 {
		
		image_index = 2;
		
		scr_Boss_Stretch("Vertical", 0.6);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_direction += (180 * (pattern_count mod 2)) - 90;
		attack_stats.bullet_type = "obj_decreasing_homing_bullet_school"
		attack_stats.bullet_sprite = "spr_Glowy_Blue_Shot"
		attack_stats.bullet_count = 1;
		attack_stats.bullet_speed = bossbulletspeed * (1.35 + random(0.4))
		attack_stats.school_bullets = 3;
		attack_stats.orbit_distance = 95;
		attack_stats.bullet_life_span = 360;
		attack_stats.homing_speed = 1.5;
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 30;
		attack_stats.bullet_part_life = 15;
		attack_stats.bullet_part_color1 = make_color_rgb(0, 184, 255);
		attack_stats.bullet_part_color2 = attack_stats.bullet_part_color1
		attack_stats.bullet_part_frequency = 4;
		
		scr_boss_shoot_v2();
	
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
if active_attack = 1 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_Wisp_Mask_Heart_Shoot, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Force_Hold_Frame(_hold_frame)
	scr_Boss_Attack_Sprite_v2(spr_Wisp_Mask_Heart_Shoot, _hold_frame, 1, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_Wisp_Mask_Heart;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
