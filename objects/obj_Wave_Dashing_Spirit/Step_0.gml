/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

var _dist = scr_Soul_Distance();
var _ang = scr_Soul_Point();

direction = _ang + scr_Wave(-90, 90, 4, 0)

var _near_spirit = instance_nearest(x, y, obj_Wave_Dashing_Spirit)

if distance_to_object(_near_spirit) < 300 {
	var _spir_ang = point_direction(x, y, _near_spirit.x, _near_spirit.y)
	x += lengthdir_x(speed * 2, _spir_ang + 180);
	y += lengthdir_y(speed * 2, _spir_ang + 180);
}

if active_attack != 0 {
	speed = speed * 0.75;
} else {
	speed = bossmovespeed / 2 * (max(1, _dist) / 150)	
}
	

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(3, 40, 10, 150, 120, 30);
		
		// Can set up the initial pattern direction
		// patternDirection = scr_Soul_Point();
		// patternDirection = random(360;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		
		scr_Boss_Stretch("Vertical", 0.6)
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(chasing_circle_x, chasing_circle_y), 1)
		bullet_speed = bossbulletspeed * 1.75;
		bullet_type = obj_Wave_Bullet;
		
		scr_Boss_Shoot();	
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
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
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_pink_spirit_shoot, _hold_frame, 2, 2, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_pink_spirit;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
