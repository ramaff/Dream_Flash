/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	active_attack = choose(1);
	
	// Hop leap attack setup example
	if active_attack = 1 {

		if champ = 3 {
			scr_Boss_Attack_Time_Setup_v2(40, 20, 1, 10, 0, -10);
		
			scr_Boss_Jump_Setup_v2(0, 10 * bossmovespeed, x, y);
		
			dash_direction = scr_Soul_Point() - 45 + (90 * (electric_hop_count mod 2))
			electric_hop_count++;
		} else {
			scr_Boss_Attack_Time_Setup_v2(70, 30, 1, 30, 30, -10);
		
			scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		
			dash_direction = scr_Soul_Point() - 45 + random(90);
		}
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
	
	if active_attack = 1 {
		if pattern_count = pattern_count_max {
			
			var _trail = false
			var _follow_id = id
			
			with(obj_Lingering_Fire_Trail_Bullet) {
				if target = _follow_id {
					_trail = true;	
				}
			}
		
			if _trail = false {
				/*bullet_part = 1;
				bullet_part_sprite = spr_Soul_Big_Bit;
				bullet_part_color1 = make_color_rgb(255,100,50);
				bullet_part_color2 = make_color_rgb(255,150,50);
				bullet_part_size = 0.3;
				bullet_part_area = 30;
				bullet_part_life = 30;
				bullet_part_frequency = 5; */


				bullet_direction = 0;
				bullet_speed = 0;
				bullet_lifespan = 9999;
				bullet_type = obj_Lingering_Fire_Trail_Bullet;
				bullet_champ = champ;
				
				if champ = 1 || champ = 3 {
					bullet_sprite = spr_Glowy_Cyan_Shot;	
				}
		
				scr_Boss_Shoot();
			}
		
		}
		
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		scr_Jump_Movement_v2(3);	
		
		if pattern_count = 1 {
			
			scr_Boss_Stretch("Horizontal", 0.8);
			
			bullet_sprite = spr_Glowy_Orange_Shot;
			bullet_part = 1;
			bullet_part_sprite = spr_Soul_Big_Bit;
			bullet_part_area = 30;
			bullet_part_life = 15;
			bullet_part_color1 = make_color_rgb(255,131,0);
			bullet_part_color2 = make_color_rgb(255,131,0);
			bullet_part_frequency = 4;
			bullet_speed = bossbulletspeed * 0.5;
			
			if champ = 1 {
				bullet_sprite = spr_Glowy_Dreamy_Shot;
				bullet_part_color1 = make_color_rgb(96,75,255);
				bullet_part_color2 = make_color_rgb(96,75,255);
				bullet_type = obj_Accel_Bullet;
				bullet_spread = 90
				bullet_direction = 45;
				bullet_count = 4;
			
				scr_Boss_Shoot();
			}
		}
		
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
	scr_Boss_Attack_Sprite_v2(spr_fire_kiss_hop, _hold_frame, 2, 2, 20);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.25, 0)	
	}
} else {
	sprite_index = spr_fire_kiss;
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
