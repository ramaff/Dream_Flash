/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

var _xx = -50;
var _yy = -50;
//image_blend = c_red;
var _bull_sprite = spr_red_bullet_v2;

if minionbossparent.blue_cloud = id {
	_xx = 50
	norm_sprite = spr_spire_thought_blue;
	shoot_sprite = spr_spire_thought_shoot_blue;
	_bull_sprite = spr_blue_bullet_v2
}
if minionbossparent.green_cloud = id {
	_yy = 50
	norm_sprite = spr_spire_thought_green;
	shoot_sprite = spr_spire_thought_shoot_green;
	_bull_sprite = spr_green_bullet_v2
}
if minionbossparent.yellow_cloud = id {
	_xx = 50
	_yy = 50
	norm_sprite = spr_spire_thought_yellow;
	shoot_sprite = spr_spire_thought_shoot_yellow;
	_bull_sprite = spr_yellow_bullet_v2;
}
direction = point_direction(x, y,minionbossparent.x + _xx, minionbossparent.y + _yy)
if active_attack = 1 {
	speed = lerp(speed, bossmovespeed * 0.1, 0.1);
} else {
	speed = lerp(speed, bossmovespeed * 2, 0.1);
}
speed = min(speed, point_distance(x, y,minionbossparent.x + _xx, minionbossparent.y + _yy));

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 40, 1, 240, 120, 30);
		
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
		
		scr_Boss_Stretch("Vertical", 0.5)
		
		attack_stats.bullet_sprite = _bull_sprite
		attack_stats.bullet_count = 5;
		attack_stats.bullet_spread = 30;
		attack_stats.bullet_speed = bossbulletspeed * (1.5 + random(0.6));
	
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
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
scr_Boss_Size_Lerp_Dir(0.15, true);

// Handles boss attack sprite animation
if active_attack != 0 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(shoot_sprite, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = norm_sprite;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
