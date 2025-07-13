/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

boss_height = max(40, boss_height);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

if instance_exists(target) {
	var _soul_point = scr_Soul_Point(target.x, target.y)
	var _circle_size = 100
	guardian_circle_angle = scr_Angle_Converge(guardian_circle_angle, _soul_point + scr_Wave(-5, 5, 1, 0), 2)

	var _xx = target.x + lengthdir_x(_circle_size, guardian_circle_angle)
	var _yy = target.y + lengthdir_y(_circle_size, guardian_circle_angle)
	x = lerp(x, _xx, 0.02)
	y = lerp(y, _yy, 0.02)

}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
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


sprite_index = spr_Wisp_Mask_Face;

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
