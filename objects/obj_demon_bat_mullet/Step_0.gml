/// @description  Boss Step Event

if !instance_exists(minionbossparent) {
	instance_destroy()
}

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(60, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

var _tar_x = obj_Soul_Parent.perX + scr_Wave(-300, 300, 4, sweep_offset);
var _tar_y = obj_Soul_Parent.perY - 240 - boss_height

direction = point_direction(x, y, _tar_x, _tar_y)
speed = min(bossmovespeed * 2, point_distance(x, y, _tar_x, _tar_y))

if active_attack != 0 {
	speed = bossmovespeed * 0.1;
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(1, 60, 15, 180, 60, 10);
		
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
		scr_Boss_Stretch("Vertical", 0.7);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(270, 120)
		bullet_direction = (bullet_direction + scr_Soul_Point()) / 2
		bullet_count = 5;
		bullet_spread = 15;
		
		bullet_speed = bossbulletspeed * 1.2;
		
		scr_Boss_Shoot();
		
		bullet_speed += bossbulletspeed * 0.15;
		
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
	var holdFrame = 1;
	scr_Boss_Attack_Sprite_v2(spr_demon_bat_mullet_shoot, holdFrame, 2, 2, 10);
	if image_index = holdFrame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_demon_bat_mullet
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
