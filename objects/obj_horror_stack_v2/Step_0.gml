/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

direction = scr_Soul_Point();
speed = bossmovespeed * 0.15;

if bosshealth <= bossmaxhealth * 0.75 and balls = 2 {
	with instance_create_depth(x, y, depth, obj_flying_ball_freak) {
		boss_value = 16
		champ = 0.1;
		scr_Boss_Stats_Setup(2);
			
		champ = other.champ;
		boost = other.boost;
		difficulty = global.floor[global.currentroom,24];	
	}
	balls--;
}
if bosshealth <= bossmaxhealth * 0.5 and balls = 1 {
	with instance_create_depth(x, y, depth, obj_crawling_ball_freak) {
		boss_value = 16
		champ = 0.1;
		scr_Boss_Stats_Setup(2);
			
		champ = other.champ;
		boost = other.boost;
		difficulty = global.floor[global.currentroom,24];	
	}
	balls--;
}


//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
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
   
    if active_attack = 1 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(180, 30)
		attack_stats.bullet_sprite = "spr_Glowy_Enemy_Shot"
		attack_stats.bullet_count = 7;
		attack_stats.bullet_spread = 30;
		attack_stats.bullet_direction_angle = 1
		
		attack_stats.boss_xoffset = -50;
		scr_boss_shoot_v2();
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(0, 30)
		
		attack_stats.boss_xoffset = 50;
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
	var _sprite_index = spr_horror_stack_v2_shoot;
	if balls = 1 {
		_sprite_index = spr_horror_stack_v2_ball_removed_shoot;
	}
	if balls = 0 {
		_sprite_index = spr_horror_stack_v2_cannon_ball_shoot;
	}
	scr_Boss_Attack_Sprite_v2(_sprite_index, _hold_frame, 1, 1, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_horror_stack_v2;
	if balls = 1 {
		sprite_index = spr_horror_stack_v2_ball_removed;
	}
	if balls = 0 {
		sprite_index = spr_horror_stack_v2_cannon_ball;
	}
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
