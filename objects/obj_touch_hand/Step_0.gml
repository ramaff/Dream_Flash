/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);


var _xx = lengthdir_x(orbit_height, tar_angle)
var _yy = lengthdir_y(orbit_height, tar_angle)

direction = point_direction(x, y,minionbossparent.x + _xx, minionbossparent.y + _yy)

if active_attack = 0 {
	orbit_height = lerp(orbit_height, 100, 0.2);	
}

speed = lerp(speed, bossmovespeed * 4, 0.1)
speed = min(speed, point_distance(x, y,minionbossparent.x + _xx, minionbossparent.y + _yy));

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		
		scr_Boss_Dash_Movement_v2(45,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(4);
		
		var dir = scr_Soul_Point(x, y + boss_height);
		var dist = scr_Soul_Distance(x, y + boss_height);
		var aimspeed = min(5, dist);
		x += lengthdir_x(aimspeed, dir);
		y += lengthdir_y(aimspeed, dir);
	
		if pattern_count = 1 {
			scr_Boss_Wobble("Horizontal", 1, 0.5, 0);
			image_index = 3;
			attack_stats.bullet_direction = random(360);
			attack_stats.bullet_spread = 45;
			attack_stats.bullet_count = 8;
			attack_stats.bullet_type = "obj_rebound_bullet_v2";
			attack_stats.bullet_speed = bossbulletspeed * 3;
			
			scr_boss_shoot_v2();
		}
	}
	
	if active_attack = 2 {
		orbit_height += 1.2;
		speed = lerp(speed, bossmovespeed * (5.4 - (pattern_count / 100)), 0.25)
		if pattern_count mod 15 = 0 {
			scr_Boss_Wobble("Vertical", 0.3, 0.5, 0);
			var _dir = point_direction(minionbossparent.x, minionbossparent.y, x, y)
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 30);
		
			scr_boss_shoot_v2();
		}
	}
	
	if active_attack = 3 {
		scr_Boss_Dash_Movement_v2(45,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(minionbossparent.x, minionbossparent.y), 3)
		
		if pattern_count mod 30 = 10 {
			scr_Boss_Wobble("Horizontal", 0.6, 0.5, 0);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(direction, 30);
			attack_stats.bullet_spread = 180 + random(90);
			attack_stats.bullet_count = 2;
			attack_stats.follow_bullets = 1;
			attack_stats.follow_strength = 0.5;
			//attack_stats.bullet_type = "obj_speed_up_down_bullet_v2";
			attack_stats.bullet_speed = bossbulletspeed * 1.8;
		
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
	sprite_index = spr_touch_hand_rock
	if pattern_count > 1 {
		if image_index >= 2.9 and image_index < 3 {
			image_index = 1	
		}
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)
		speed = 0;
	}
} else if active_attack = 2 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_touch_hand_paper, _hold_frame, 0, 0, 20);
} else if active_attack = 3 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_touch_hand_scissors, _hold_frame, 0, 1, 20);
} else {
	sprite_index = spr_touch_hand;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
