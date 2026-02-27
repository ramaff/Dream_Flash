/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

speed = lerp(speed, bossmovespeed * 2, 0.05);
direction = scr_Soul_Point() + scr_Wave(-60, 60, 4, 0)

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2, 3);
	active_attack = 1;
	
	// Sneeze
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(40, 30, 1, 120, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point() + 180, 0, 5 * bossmovespeed);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
	// The Long Nose Blow
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 30, 1, 30, 30, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point() + 180, 0, 7 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(2);	
		
		if pattern_count = floor(pattern_count_max) {
			scr_Boss_Stretch("Vertical", 1);
			attack_stats.bullet_sprite = "spr_green_bullet_v2"
			attack_stats.bullet_count = 1;
			attack_stats.bullet_type = "obj_booger_bullet"
		
			repeat(6) {
				attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 60)
				attack_stats.bullet_speed = bossbulletspeed * (1 + random(1))
				attack_stats.bullet_life_span = 300 + random(60);
				attack_stats.bullet_bounce_speed = 4 + random(4);
				
				scr_boss_shoot_v2();
			}
		}
	
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
scr_Boss_Size_Lerp_Dir(0.15);

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_smell_ghoul, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_smell_ghoul;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
