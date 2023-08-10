/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if active_attack = 2 {
	
	///////////////// Teleport Condition Checks ///////////////////////////////
	
	scr_Soul_Outside_Check()
	
	var _i = 0
	var _dir_off = 90
	for(_i = 0; _i < 4; _i++) {
		var _s_pos = shadow_positions[_i];
		
		if _s_pos.ex > xx_center and _s_pos.ey > yy_center {
			edge_direction = 225
		}
		if _s_pos.ex <= xx_center and _s_pos.ey > yy_center {
			edge_direction = 135
		}
		if _s_pos.ex <= xx_center and _s_pos.ey <= yy_center {
			edge_direction = 45
		}
		if _s_pos.ex > xx_center and _s_pos.ey <= yy_center {
			edge_direction = 315
		}
		
		shadow_positions[_i].ex += lengthdir_x(bossmovespeed * 4.5, edge_direction)
		shadow_positions[_i].ey += lengthdir_y(bossmovespeed * 4.5, edge_direction)
		
		_s_pos = shadow_positions[_i];
	
		shadow_positions[_i].xx = lerp(_s_pos.xx, _s_pos.ex, 0.1)
		shadow_positions[_i].yy = lerp(_s_pos.yy, _s_pos.ey, 0.1)
		
		shadow_positions[_i].dir = edge_direction;
		
	}
	
	x = shadow_positions[0].xx;
	y = shadow_positions[0].yy;
	
	direction = shadow_positions[0].dir
	speed = 0.1;
	
} else if active_attack != 0 {
	direction = scr_Soul_Point();
	speed = bossmovespeed * 0.25
} else {
	direction = scr_Soul_Point();
	speed = bossmovespeed
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 1, 2);
	/*if currentphase == 2 {
		active_attack = 3;	
	} */
	
	// Rapid Throws
    if active_attack = 1 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(4, 50, 20, 120, 30, -10);
		
		// Can set up the initial pattern direction
		pattern_direction = 180;
    }
	// Shadow Clone Jitsu
    if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(6, 50, 90, 120, 30, -10);
		
		/*for(_i = 0; _i < 4; _i++) {
			var _s_pos = shadow_positions[_i];
		
			shadow_positions[_i].ex = x
			shadow_positions[_i].ey = y
	
			shadow_positions[_i].xx = x
			shadow_positions[_i].yy = y
		} */
		
		shadow_positions = [
					{xx: x, yy: y, ex: xx_center - room_half_size, ey: yy_center, dir: direction}, 
					{xx: x, yy: y, ex: xx_center + room_half_size, ey: yy_center, dir: direction}, 
					{xx: x, yy: y, ex: xx_center, ey: yy_center - room_half_size, dir: direction}, 
					{xx: x, yy: y, ex: xx_center, ey: yy_center + room_half_size, dir: direction}
					];
	
    }
	// Smoke Bomb Throw Barrage
    if active_attack = 3 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(4, 50, 30, 120, 30, -10);
		
		// Can set up the initial pattern direction
		pattern_direction = 180;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
		bullet_direction = pattern_direction
		bullet_speed = bossbulletspeed * 1.75;
		bullet_sprite = spr_Boss_Ninja_Star;
		
		bullet_count = 2;
		bullet_spread = 60;
		
		scr_Boss_Shoot();
		
		bullet_type = obj_Hatred_Seeking_Bullet;
		bullet_speed = bossbulletspeed * 2;
			
		bullet_count = 1;
		bullet_spread = 0;
			
		bullet_part = 1;
		bullet_part_sprite = spr_Ninja_Bullet_Part;
		bullet_part_area = 0;
		bullet_part_life = 45;
		bullet_part_frequency = 15;
		bullet_part_color1 = make_color_rgb(255,0,43);
		bullet_part_color2 = bullet_part_color1;
		
		scr_Boss_Shoot();
		
		pattern_direction += 90;
	
		// If you gotta change the pattern aim direction
	    // bossPatternDirection += 0;
	}
	
	if active_attack = 2 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 15)
		bullet_speed = bossbulletspeed * 2.25;
		bullet_sprite = spr_Boss_Ninja_Star;
		
		scr_Boss_Shoot();
		
		boss_xoffset = shadow_positions[1].xx - x;
		boss_yoffset = shadow_positions[1].yy - y
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(boss_xoffset + x, boss_yoffset + y), 15)
		
		scr_Boss_Shoot();
		
		boss_xoffset = shadow_positions[2].xx - x;
		boss_yoffset = shadow_positions[2].yy - y
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(boss_xoffset + x, boss_yoffset + y), 15)
		
		scr_Boss_Shoot();
		
		boss_xoffset = shadow_positions[3].xx - x;
		boss_yoffset = shadow_positions[3].yy - y
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(boss_xoffset + x, boss_yoffset + y), 15)
		
		scr_Boss_Shoot();
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
if active_attack = 2 {
	scr_Boss_Size_Lerp_Dir(0.15, true);
} else {
	scr_Boss_Size_Lerp(0.15);
}

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_ninja_spirit_v2_single_throw, _hold_frame, 2, 3, 20);
} else if active_attack = 2 {
	var _hold_frame = 2;
	scr_Boss_Attack_Sprite_v2(spr_ninja_spirit_v2_shuffle_throw, _hold_frame, 3, 11, 20, 10);
} else {
	sprite_index = spr_ninja_spirit_v2
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
