/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if instance_exists(obj_Chasing_Circle_Spirit) {
	var _circle_count = instance_number(obj_Chasing_Circle_Spirit);
	var _soul_point = scr_Soul_Point(chasing_circle_x, chasing_circle_y)
	var _circle_size = 70 + sqrt(_circle_count * 500)
	chasing_circle_x += lengthdir_x(bossmovespeed, _soul_point)
	chasing_circle_y += lengthdir_y(bossmovespeed, _soul_point)
	chasing_circle_angle += 1;
	with(obj_Chasing_Circle_Spirit) {
		chasing_circle_x = other.chasing_circle_x
		chasing_circle_y = other.chasing_circle_y
		var _xx = chasing_circle_x + lengthdir_x(_circle_size, other.chasing_circle_angle)
		var _yy = chasing_circle_y + lengthdir_y(_circle_size, other.chasing_circle_angle)
		x = lerp(x, _xx, 0.03)
		y = lerp(y, _yy, 0.03)
		other.chasing_circle_angle += 360 / _circle_count;
	}
} else {
	chasing_circle_x = x
	chasing_circle_y = y
}

if instance_exists(obj_Guardian_Circle_Spirit) {
	var _circle_count = instance_number(obj_Guardian_Circle_Spirit);
	var _soul_point = scr_Soul_Point(x, y)
	var _circle_size = 70 + sqrt(_circle_count * 400)
	var _guardian_circle_angle = _soul_point - 5 * _circle_count
	with(obj_Guardian_Circle_Spirit) {
		var _xx = other.x + lengthdir_x(_circle_size, _guardian_circle_angle)
		var _yy = other.y + lengthdir_y(_circle_size, _guardian_circle_angle)
		x = lerp(x, _xx, 0.03)
		y = lerp(y, _yy, 0.03)
		_guardian_circle_angle += 10
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3, 4);
	if scr_Minion_Count(18) {
		active_attack = 1;	
	}
	
	// Hop leap attack setup example
	if active_attack = 1 {
		// 
		scr_Boss_Attack_Time_Setup_v2(120, 30, 1, 30, 30, 10);
		
		scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	// Minion Spawn Example
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(8, 50, 5, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Minion Spawn Example
	if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(5, 50, 5, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// Minion Spawn Example
	if active_attack = 4 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 10, 120, 30, 10);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		patternDirection = random(360);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
	
	if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
	}
	
	if active_attack = 2 {
	
		minion_count = 1;
		minion_type = obj_Chasing_Circle_Spirit;
		minion_health = bossmaxhealth / 10;
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn();
	
	}
	
	if active_attack = 3 {
	
		minion_count = 1;
		minion_type = obj_Guardian_Circle_Spirit;
		minion_health = bossmaxhealth / 10;
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn();
	
	}
	
	if active_attack = 4 {
	
		minion_count = 1;
		minion_type = obj_Nightmare_Soul;
		minion_health = bossmaxhealth / 20;
		minion_dir = pattern_direction
		//minion_spawn_animation = spr_pocket_minion_spawn
		//minion_yy = boss_height;

		scr_Minion_Spawn();
		
		minion_dir += 180;
		
		scr_Minion_Spawn()
		
		pattern_direction += 15;
	
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
	var _hold_frame = -1;
	scr_Boss_Attack_Sprite_v2(spr_the_host_skitter, _hold_frame, 5, 8, 40);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_the_host, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_the_host;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
