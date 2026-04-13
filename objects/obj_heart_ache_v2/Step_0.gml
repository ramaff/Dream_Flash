/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 0 {
	direction = scr_Soul_Point() + 180;
	speed = lerp(speed, bossmovespeed * 2, 0.1);
} else {
	direction = scr_Soul_Point() + 180;
	speed = lerp(speed, bossmovespeed * 0.25, 0.05);	
}

x += 3 - random(6);
y += 3 - random(6);

var _cent_dir = point_direction(x, y, room_width / 2, room_height / 2)
var _cent_dist = point_distance(x, y, room_width / 2, room_height / 2) / 200

x += lengthdir_x(_cent_dist, _cent_dir)
y += lengthdir_y(_cent_dist, _cent_dir)

if active_attack = 2 and active_attack_delay <= 0 and pattern_count > 0 {
	var _image = false
	if pattern_count mod 10 = 0 {
		_image = true
	}
	with(obj_bullet_parent_v2) {
		bullet_stats.bullet_speed += 0.1;
		speed += 0.1;
		if _image {
			scr_After_Image(20, false, true, c_white, sprite_index)	
		}
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 2, 3);
	
	if scr_Minion_Count() {
		active_attack = choose(1, 2, 2);
	}
	
	if instance_number(obj_bullet_parent_v2) < 20 {
		if active_attack = 2 {
			active_attack = 1;	
		}
	}
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 50, 60, 90, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Hop leap attack setup example
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(120, 50, 1, 180, 30, 10);
		
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 150, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

attack_stats.bullet_speed = bossbulletspeed * (0.4 + random(0.15))
attack_stats.bullet_life_span = 420;
attack_stats.bullet_type = "obj_heart_beat_bullet_v2";
attack_stats.bullet_sprite = "spr_bloody_bullet_v2"

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 1);
		
		if pattern_count mod 2 = 1 {
			attack_stats.bullet_type = "obj_heart_beat_bullet_v2_alt";	
		}
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 120)
		attack_stats.bullet_count = 3;
		attack_stats.bullet_spread = 70;
		scr_boss_shoot_v2();
		
		attack_stats.bullet_direction += 10;
		scr_boss_shoot_v2()
		attack_stats.bullet_direction += 10;
		scr_boss_shoot_v2()
		attack_stats.bullet_direction -= 30;
		scr_boss_shoot_v2()
		attack_stats.bullet_direction -= 10;
		scr_boss_shoot_v2()
	
		// If you gotta change the pattern aim direction
	    // pattern_direction += 0;
	}
	
	if active_attack = 2 {	
		
		if pattern_count = floor(pattern_count_max) || pattern_count = floor(pattern_count_max / 2) {
			scr_Boss_Stretch("Vertical", 1);
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 180)
			attack_stats.bullet_count = 6;
			attack_stats.bullet_spread = 60;
			
			if pattern_count = floor(pattern_count_max / 2) {
				attack_stats.bullet_type = "obj_heart_beat_bullet_v2_alt";	
			}
		
			scr_boss_shoot_v2();
		
			attack_stats.bullet_direction += 10;
			scr_boss_shoot_v2()
			attack_stats.bullet_direction -= 20;
			scr_boss_shoot_v2()
		}
	}
	
	if active_attack = 3 {
		
		scr_Boss_Stretch("Vertical", 1);
	
		minion_count = 3;
		minion_type = obj_heart_attacker;
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
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation
if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_heart_ache_v2_ache, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack != 0 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_heart_ache_v2_mitosis, _hold_frame, 3, 3, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_heart_ache_v2;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
