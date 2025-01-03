/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

//direction = round(direction / 45) * 45;

image_angle = direction + 180;

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

if active_attack = 1 {
	path_speed = bossmovespeed * 1.5;
} else if active_attack = 2 {
	path_speed = bossmovespeed * 0.5;
} else if active_attack = 5 {
	path_speed = bossmovespeed * 0.95;
}
if active_attack = 0 {
	path_speed = bossmovespeed;	
}


// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

//path_speed = bossmovespeed * 0.5;

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1, 2);
	if currentphase = 2 {
		active_attack = choose(1, 3);
	}
	active_attack = 1
	
    if active_attack = 1 {
		var _attacks = 4;
		
		scr_Boss_Attack_Time_Setup_v2(_attacks, 50, 120, 120, 30, 10);
    }
	if active_attack = 2 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(12, 50, 30, 120, 30, 10);
    }
	if active_attack = 3  {
		// 
		var _attacks = 15;
		if champ = 1 and currentphase = 2 {
			_attacks = 30;
		}
		
		scr_Boss_Attack_Time_Setup_v2(_attacks, 50, 20, 120, 30, 10);
		
		pattern_direction = scr_Soul_Point()
    }
	if active_attack = 4 {
		scr_Boss_Attack_Time_Setup_v2(6, 50, 90, 120, 30, 10);
    }
	if active_attack = 5 {
		// Setup how many attacks per boss move, delay, etc
		scr_Boss_Attack_Time_Setup_v2(36, 50, 10, 120, 30, 10);
    }
	if active_attack = 6 {
		// Setup how many attacks per boss move, delay, etc
		
		scr_Boss_Attack_Time_Setup_v2(3, 50, 180, 120, 30, 10);
    }
	pattern_direction = image_angle + 180 + 90;
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
    if active_attack = 1  {
		
		if pattern_count = pattern_count_max {
			minion_count = 1;
			minion_type = obj_king_crazy_eye;
			minion_health = bossmaxhealth / 5;
			minion_dir = 270
			minion_speed = bossbulletspeed * (1.5 + random(0.5))
			minion_yy = 150;
			minion_knockdefense = 5
			
			scr_Minion_Spawn();
			
		} else {
		
			attack_stats.bullet_type = "obj_deep_exploding_bullet"
		    attack_stats.bullet_sprite = "spr_Exploding_Shot"
		    attack_stats.bullet_speed = bossbulletspeed * 0.85;
		    attack_stats.bullet_power = bosspower * 1.5;
		    attack_stats.bullet_direction = (-10 + random(20)) / bossaccuracy;
		    attack_stats.bullet_size = 0.6;
		    attack_stats.bullet_count = 1;
		    attack_stats.bullet_spread = 0;
	
			attack_stats.bullet_part = 1;
			attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
			attack_stats.bullet_part_area = 45;
			attack_stats.bullet_part_life = 30;
			attack_stats.bullet_part_color1 = make_color_rgb(255,170,0);
			attack_stats.bullet_part_color2 = make_color_rgb(255,170,0);
			attack_stats.bullet_part_frequency = 4;
			scr_Boss_Stretch("Horizontal",0.4);
		
			var _dir = image_angle + 270;
		
			attack_stats.bullet_direction = _dir
		
		    scr_boss_shoot_v2();
			scr_Sound_Effect(snd_Deep_Laser);
		}
	
	}
	
	if active_attack = 2 {
	    
		attack_stats.bullet_speed = bossbulletspeed * 1.5;
		attack_stats.bullet_sprite = "spr_Drill_Laser";
		attack_stats.bullet_type = "obj_drill_trail_bullet";
		attack_stats.bullet_direction_angle = 1
		
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 30;
		attack_stats.bullet_part_life = 20;
		attack_stats.bullet_part_color1 = make_color_rgb(122,0,255);
		attack_stats.bullet_part_color2 = make_color_rgb(122,0,255);
		attack_stats.bullet_part_frequency = 4;
	
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.25);
		
		var _dir = image_angle + 270;
		
		//attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 20) - 30;
		//attack_stats.bullet_direction += (pattern_count mod 3) * 30
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 20)
		attack_stats.bullet_count = 2;
		attack_stats.bullet_spread = 60;
		
		var _dir_add = 0;
		if pattern_count mod 2 = 0 {
			_dir_add = 180;	
		}

	    attack_stats.boss_xoffset = lengthdir_x(100,image_angle + _dir_add);
	    attack_stats.boss_yoffset = lengthdir_y(100,image_angle + _dir_add) + lengthdir_y(85,image_angle + 270);
	    scr_boss_shoot_v2();

	}
	
	if active_attack = 3 {
	    attack_stats.bullet_type = "obj_basic_bullet_v2"
	    attack_stats.bullet_sprite = "spr_Glowy_Red_Laser"
	    attack_stats.bullet_speed = bossbulletspeed * (2.4 + random(0.25));
		attack_stats.bullet_direction_angle = 1;
	
		scr_Boss_Stretch("Horizontal",0.4);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(pattern_direction, 2)
		pattern_direction = scr_Angle_Converge(pattern_direction, scr_Soul_Point(), 10)
		
		var _dir_add = 0;
		if pattern_count mod 2 = 0 {
			_dir_add = 180;	
		}
		
		scr_boss_shoot_v2();
		
		attack_stats.boss_xoffset = lengthdir_x(30,image_angle + _dir_add);
	    attack_stats.boss_yoffset = lengthdir_y(30,image_angle + _dir_add);
		
		scr_boss_shoot_v2();
		
		attack_stats.boss_xoffset = lengthdir_x(-30,image_angle + _dir_add);
	    attack_stats.boss_yoffset = lengthdir_y(30,image_angle + _dir_add);
		
		scr_boss_shoot_v2();
		scr_Sound_Effect(snd_Boss_Laser);
		
		if champ = 2 {
			if pattern_count mod 2 = 0 {
				attack_stats.bullet_count = 1;
				attack_stats.bullet_sprite = "spr_Boss_Missile";
				attack_stats.bullet_type = "obj_homing_bullet_v2";
				attack_stats.homing_speed = 1.25;
				
				attack_stats.bullet_part = 1;
				attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
				attack_stats.bullet_part_frequency = 4;
				attack_stats.bullet_part_color1 = make_color_rgb(0,154,255);
				attack_stats.bullet_part_color2 = make_color_rgb(0,154,255);
				attack_stats.bullet_part_area = 20;
				attack_stats.bullet_part_life = 30;
			
				attack_stats.bullet_speed = bossbulletspeed * 1.4;
				attack_stats.bullet_life_span = 360;
				
				scr_boss_shoot_v2();
			}
		} else {
			attack_stats.bullet_speed = bossbulletspeed * (1.75 + random(1.75));
			attack_stats.bullet_type = "obj_falling_exploder_bullet";
			attack_stats.bullet_sprite = "spr_Glowy_Explosive_Shot"
			attack_stats.bullet_bounce_height = 60;
			attack_stats.bullet_life_span = 180 + random(60);
			attack_stats.bullet_bounce_speed = 1
			attack_stats.bullet_lob_time = attack_stats.bullet_life_span
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(image_angle + 270, 120)
			attack_stats.bullet_count = 1;
			
			scr_boss_shoot_v2();
		}

	}
	
	if active_attack = 4 {
	    attack_stats.bullet_type = "obj_deep_split_trail_bullet"
	    attack_stats.bullet_sprite = "spr_Big_Glowy_Green_Shot"
	    attack_stats.bullet_speed = bossbulletspeed * (1.45 + random(0.5));
	    attack_stats.bullet_power = bosspower * 1.5;
	    attack_stats.bullet_direction = (-10 + random(20)) / bossaccuracy;
	    attack_stats.bullet_size = 0.6;
	    attack_stats.bullet_count = 1;
	    attack_stats.bullet_spread = 0;
	
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 45;
		attack_stats.bullet_part_life = 30;
		attack_stats.bullet_part_color1 = make_color_rgb(0,239,37);
		attack_stats.bullet_part_color2 = make_color_rgb(0,239,37);
		attack_stats.bullet_part_frequency = 4;
		scr_Boss_Stretch("Horizontal",0.4);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
	    scr_boss_shoot_v2();
		scr_Sound_Effect(snd_Deep_Laser);

	}
	
	if active_attack = 5 {
		
		var _dir = image_angle + 270;
		
		if currentphase = 1 and pattern_count mod 3 = 0 {
			attack_stats.boss_xoffset = 0
			attack_stats.boss_yoffset = 0
			
			attack_stats.bullet_speed = bossbulletspeed * (1.75 + random(2.75));
			attack_stats.bullet_type = "obj_falling_exploder_bullet";
			attack_stats.bullet_sprite = "spr_Glowy_Explosive_Shot"
			attack_stats.bullet_bounce_height = 60;
			attack_stats.bullet_life_span = 180 + random(60);
			attack_stats.bullet_bounce_speed = 1
			attack_stats.bullet_lob_time = attack_stats.bullet_life_span
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 120)
			attack_stats.bullet_count = 1;
			
			scr_boss_shoot_v2();	
		}
		
		if pattern_count mod 12 = 0 and currentphase = 2 {
			attack_stats.bullet_type = "obj_deep_exploding_bullet"
		    attack_stats.bullet_sprite = "spr_Exploding_Shot"
		    attack_stats.bullet_speed = bossbulletspeed * 0.85;
		    attack_stats.bullet_power = bosspower * 1.5;
		    attack_stats.bullet_direction = (-10 + random(20)) / bossaccuracy;
		    attack_stats.bullet_size = 0.6;
		    attack_stats.bullet_count = 1;
		    attack_stats.bullet_spread = 0;
	
			attack_stats.bullet_part = 1;
			attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
			attack_stats.bullet_part_area = 45;
			attack_stats.bullet_part_life = 30;
			attack_stats.bullet_part_color1 = make_color_rgb(255,170,0);
			attack_stats.bullet_part_color2 = make_color_rgb(255,170,0);
			attack_stats.bullet_part_frequency = 4;
			scr_Boss_Stretch("Horizontal",0.4);
		
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 30)
		
		    scr_boss_shoot_v2();
			scr_Sound_Effect(snd_Deep_Laser);
		}
		
		attack_stats.bullet_part = 0;
		
		attack_stats.bullet_life_span = 300;
		attack_stats.bullet_speed = bossbulletspeed * 1.5;
		attack_stats.bullet_sprite = "spr_Glowy_Purple_Laser";
		attack_stats.bullet_type = "obj_basic_bullet_v2";
		attack_stats.bullet_direction_angle = 1
	
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.25);
		
		//attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 20) - 30;
		//attack_stats.bullet_direction += (pattern_count mod 3) * 30
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(_dir, 1)
		
		//var _dir_add = 180 * (pattern_count mod 2);
		var _dir_add = 0;
		repeat(2) {
			_dir_add += 180
			attack_stats.boss_xoffset = lengthdir_x(100,image_angle + _dir_add);
			attack_stats.boss_yoffset = lengthdir_y(100,image_angle + _dir_add) + lengthdir_y(85,image_angle + 270);
			scr_boss_shoot_v2();
		}
		attack_stats.bullet_type = "obj_wave_bullet_v2";
		attack_stats.bullet_speed = bossbulletspeed * 2.05;
		attack_stats.wave_strength = 12.5;
		attack_stats.wave_time = 40;
		repeat(2) {
			_dir_add += 180
			
			attack_stats.boss_xoffset = lengthdir_x(100,image_angle + _dir_add);
			attack_stats.boss_yoffset = lengthdir_y(100,image_angle + _dir_add) + lengthdir_y(85,image_angle + 270);
			scr_boss_shoot_v2();
			
			attack_stats.wave_strength = -12.5;
		}
	
	}
	
	if active_attack = 6 {
	    attack_stats.bullet_type = "obj_deep_maelstrom_bullet"
	    attack_stats.bullet_sprite = "spr_Maelstrom_Shot"
	    attack_stats.bullet_speed = bossbulletspeed * (1.05 + random(0.2));
	    attack_stats.bullet_power = bosspower * 1.5;
	    attack_stats.bullet_direction = (-10 + random(20)) / bossaccuracy;
	    attack_stats.bullet_size = 0.8;
	    attack_stats.bullet_count = 1;
	    attack_stats.bullet_spread = 0;
	    attack_stats.bullet_life_span = 300;
	
		attack_stats.bullet_part = 1;
		attack_stats.bullet_part_sprite = "spr_Soul_Big_Bit";
		attack_stats.bullet_part_area = 45;
		attack_stats.bullet_part_life = 30;
		attack_stats.bullet_part_speed = 4
		attack_stats.bullet_part_color1 = make_color_rgb(255,0,255);
		attack_stats.bullet_part_color2 = make_color_rgb(255,0,255);
		attack_stats.bullet_part_frequency = 4;
		scr_Boss_Stretch("Horizontal",0.4);
		
		attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 120)
		
	    scr_boss_shoot_v2();
		scr_Sound_Effect(snd_Deep_Laser);

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

seg_angle = image_angle + 180 + 90;
seg_distance = 0;

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

if active_attack = 2 || active_attack = 3 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_wall_king_dragon_blast, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 1 {
	var _hold_frame = 1;
	scr_Boss_Attack_Sprite_v2(spr_wall_king_mouth_shoot, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_wall_king;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
