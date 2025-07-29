/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);
var _xx = path_get_x(boss_path, path_position)
var _yy = path_get_y(boss_path, path_position)

if active_attack != 0 {
	speed = lerp(speed, bossmovespeed * 0.1, 0.1)
} else {
	speed = lerp(speed, bossmovespeed * 3, 0.1)
}

if instance_exists(target) {
	_xx = target.x
	_yy = target.y
	
	path_position = target.path_position
	
	speed = target.speed
}
direction = point_direction(x, y, _xx, _yy)


var _dist = point_distance(x, y, _xx, _yy)

if _dist < bossmovespeed * 3.5 {
	path_position += 0.01
	speed = target.speed * 0.5
}



if path_position >= 1 {
	path_position--;	
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
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 180, 120, 30);
		
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
	
	attack_stats.bullet_part = 1;
	attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
	attack_stats.bullet_part_area = 30;
	attack_stats.bullet_part_life = 15;
	attack_stats.bullet_part_color1 = make_color_rgb(255,0,0);
	attack_stats.bullet_part_color2 = make_color_rgb(255,0,0);
	attack_stats.bullet_part_frequency = 4;
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_Glowy_Enemy_Shot";
		attack_stats.bullet_type = "obj_lob_bullet_v2";
		attack_stats.bullet_count = 2;
		attack_stats.bullet_spread = 15;
		attack_stats.bullet_direction_angle = 1
		
		attack_stats.bullet_lob_time = 90;
		attack_stats.bullet_lifespan = attack_stats.bullet_lob_time + 2;
		attack_stats.bullet_speed = bossbulletspeed * 2.5;
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_speed = bossbulletspeed * 2.1;
		attack_stats.bullet_spread = 30;
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_speed = bossbulletspeed * 1.7;
		attack_stats.bullet_spread = 50;
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_speed = bossbulletspeed * 1.3;
		attack_stats.bullet_spread = 30;
		
		scr_boss_shoot_v2();
		
		attack_stats.bullet_speed = bossbulletspeed * 1.1;
		attack_stats.bullet_spread = 15;
		
		scr_boss_shoot_v2();
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
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
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_blue_boss_bead_shoot, _hold_frame, 1, 1, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_blue_boss_bead
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
