/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

var _tar_x = obj_Soul_Parent.perX + scr_Wave(-300, 300, 4, 0);
var _tar_y = obj_Soul_Parent.perY - 170 - boss_height

direction = point_direction(x, y, _tar_x, _tar_y)
speed = min(bossmovespeed * 2.75, point_distance(x, y, _tar_x, _tar_y))

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(10, 50, 40, 120, 30, 10);
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 120, 30, 50);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(mean(scr_Soul_Point(), 270), 30)
		attack_stats.bullet_sprite = "spr_Tear_Drop_Bullet"
		attack_stats.bullet_type = "obj_friction_bullet_v2"
		attack_stats.bullet_count = 3;
		attack_stats.bullet_spread = 30;
		attack_stats.bullet_speed = bossbulletspeed * 1.75;
		attack_stats.bullet_friction = attack_stats.bullet_speed * 0.01;
		attack_stats.bullet_min_speed = attack_stats.bullet_speed * 0.15;
		attack_stats.bullet_life_span = 600;
		attack_stats.bullet_direction_angle = true;
		
		
		scr_boss_shoot_v2();
		
		if currentphase >= 2 {
			attack_stats.bullet_count = 2;
			
			attack_stats.bullet_speed = bossbulletspeed * 1.35;
			attack_stats.bullet_friction = attack_stats.bullet_speed * 0.01;
			attack_stats.bullet_min_speed = attack_stats.bullet_speed * 0.15;
			
			scr_boss_shoot_v2();
		}
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	 if active_attack = 2 {
		scr_Boss_Stretch("Vertical", 1);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_Echolocation_Shot"
		attack_stats.bullet_type = "obj_echo_bullet_v2"
		attack_stats.bullet_count = 3;
		attack_stats.bullet_spread = 45;
		attack_stats.bullet_direction_angle = true;
		attack_stats.bullet_life_span = 360;
		
		if currentphase >= 2 {
			attack_stats.bullet_count += 1;
		}
		
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
	scr_Boss_Attack_Sprite_v2(spr_growing_sorrows_v2_weep, _hold_frame, 1, 4, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_growing_sorrows_v2_wing_shot, _hold_frame, 1, 6, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_growing_sorrows_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
