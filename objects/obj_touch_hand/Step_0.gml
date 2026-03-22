/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);


var _xx = lengthdir_x(100, tar_angle)
var _yy = lengthdir_y(100, tar_angle)

direction = point_direction(x, y,minionbossparent.x + _xx, minionbossparent.y + _yy)
if active_attack = 1 {
	speed = lerp(speed, bossmovespeed * 0.1, 0.1);
} else {
	speed = lerp(speed, bossmovespeed * 3, 0.1);
}
speed = min(speed, point_distance(x, y,minionbossparent.x + _xx, minionbossparent.y + _yy));

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
		scr_boss_shoot_v2();
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
		scr_Boss_Dash_Movement_v2(45,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		if pattern_count mod 20 = 0 {
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(direction, 30);
			attack_stats.bullet_spread = 270;
			attack_stats.bullet_count = 2;
		
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
scr_Boss_Size_Lerp_Dir(0.15, true);

// Handles boss attack sprite animation
if active_attack != 0 and active_attack_delay > 0 {
	sprite_index = spr_touch_hand_shoot;
} else if active_attack = 1 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_touch_hand_rock, _hold_frame, 0, 0, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_touch_hand_paper, _hold_frame, 0, 0, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else if active_attack = 3 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_touch_hand_scissors, _hold_frame, 0, 1, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_touch_hand;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
