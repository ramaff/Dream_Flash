/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
//scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

if instance_exists(target) {
	if currentphase = 2 {
		weight = 1;
		target.target_weight = 1;
	}
}
if instance_exists(hound) {
	if currentphase = 2 {
		hound.currentphase = 2;
		hound.bossdefense = hound.bossdefense2;
	}
	if hound.currentphase = 2 and speed > 1 {
		weight = 1;
		target.target_weight = 1;
	}
} else {
	instance_destroy()	
}

scr_Chain_Pull(target, 15, weight, target_weight);

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	//active_attack = choose(1);
	if currentphase = 2 {
		active_attack = 0;	
	}
	if instance_exists(hound) {
		if hound.currentphase = 2 and hound.active_attack = 3 {
			active_attack = 2;
		}
	}
	
	// Walk
	if active_attack = 1 {
		// 
		scr_Boss_Attack_Time_Setup_v2(150, 30, 1, 240, 180, 0);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 1.5 * bossmovespeed);
    }
	
	// Being Yanked
	if active_attack = 2 {
		// 
		var _hop_duration = 40;
		if champ = 1 {
			_hop_duration = 80;	
		}
		scr_Boss_Attack_Time_Setup_v2(_hop_duration, 0, 1, 0, 0, 10);
		
		scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 1.5 * bossmovespeed);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
	
	if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(4,2);
		
		speed = dash_speed;
        direction = dash_direction;
		
		dash_direction = scr_Angle_Converge(dash_direction, scr_Soul_Point(), 1)

	}
	
	if active_attack = 2 {
		scr_Jump_Movement_v2(3)	
		
		if pattern_count = 1 {
			bosshealth -= 10;
			scr_setup_dmg_indicator(x,y, 10, c_white);
			image_index = 4;
			
			scr_Boss_Stretch("Horizontal", 0.4)
			
			if champ = 1 {
				
				bullet_direction = 45;
				bullet_spread = 90;
				bullet_count = 4;
				bullet_sprite = spr_Glowy_Purple_Shot;
				
				scr_Boss_Shoot()
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

if instance_exists(hound) {
	direction = point_direction(x, y, hound.x, hound.y)
	speed = 0.01
}

// Handles boss attack sprite animation
if active_attack = 1 {
	var _hold_frame = 0;
	scr_Boss_Attack_Sprite_v2(spr_walker_walking, _hold_frame, 0, 5, 0);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	if instance_exists(hound) {
		if hound.currentphase = 2 {
			if champ = 1 {
				image_speed = 0.5;	
			}
			if hound.speed > 1 {
				sprite_index = spr_walker_not_in_control
				if image_index = 4 {
					scr_Boss_Stretch("Horizontal", 0.4);
				}
			} else {
				image_index = 0;	
			}
		} else {
			sprite_index = spr_walker_handling;
			image_index = 0;
	
			//if point_distance(x, y, hound.x, hound.y) > 200 {
			if hound.speed > 1 {
				image_index = 1;
			}
		}
	} else {
		sprite_index = spr_walker_handling;
	
		image_index = 0;
	}
}

// Go back to normal default size
scr_Boss_Size_Lerp_Dir(0.15, true);

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
