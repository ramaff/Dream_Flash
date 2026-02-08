/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

direction = scr_Soul_Point()
speed = lerp(speed, bossmovespeed, 0.1);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	//active_attack = choose(1, 2, 3);
	if !instance_exists(red_cloud) || !instance_exists(blue_cloud) || !instance_exists(green_cloud) || !instance_exists(yellow_cloud) {
		active_attack = 1;
	}
	
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 50, 1, 90, 30, 30);
		
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
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		attack_stats.bullet_sprite = "spr_pink_bullet_v2"
		attack_stats.bullet_count = 12;
		attack_stats.bullet_spread = 30;
		attack_stats.bullet_direction_angle = 1
		attack_stats.bullet_speed = bossbulletspeed * (1 + random(0.5));
		
		scr_boss_shoot_v2();
		
		minion_count = 1;
		minion_type = obj_spire_thought;
		minion_health = 40;
		minion_defense = 0;
		
		var _mins = scr_Minion_Spawn();
		if !instance_exists(red_cloud) {
			red_cloud = _mins[0];
		} else if !instance_exists(blue_cloud) {
			blue_cloud = _mins[0];
		} else if !instance_exists(green_cloud) {
			green_cloud = _mins[0];
		} else if !instance_exists(yellow_cloud) {
			yellow_cloud = _mins[0];
		}
		
		var _dmg = 30
		bosshealth -= _dmg;
		scr_setup_dmg_indicator(x,y, _dmg, c_white);
	
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
if active_attack != 0 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_spire_hard_think, _hold_frame, 3, 4, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_spire;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
