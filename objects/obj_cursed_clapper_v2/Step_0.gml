/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

var _og_id = id;
var _paired = false;
if !instance_exists(paired_hand) {
	with(obj_cursed_clapper_v2) {
		if paired_hand == noone and id != _og_id {
			other.paired_hand = id;
			paired_hand = other.id;
			if paired_hand.orientation == "left" {
				paired_hand.orientation = "right";
			}
		}
	}
}
if instance_exists(paired_hand) {
	_paired = true	
} else if active_attack = 2 {
	active_attack = 0
}

if active_attack = 0 {
	if boss_height < 60 {
		boss_height = lerp(boss_height, 60, 0.05)
	}
	// If boss is floating in air, can make it bob up and down:
	scr_Boss_Height_Bob(30, 1, 0);

	if _paired {
		var _xx = -50 - (global.roomSizeX * 0.5);
		if orientation == "right" {
			_xx = _xx * -1;	
		}
		direction = point_direction(x, y, (room_width / 2) + _xx, obj_Soul_Parent.perY)
		speed = lerp(speed, bossmovespeed * 2, 0.05);
	} else {
		direction = scr_Soul_Point()
		speed = lerp(speed, bossmovespeed, 0.05);
	}
}
if active_attack = 2 and active_attack_delay >= 0 {
	speed = lerp(speed, 0, 0.025)
	
	if boss_height < 60 {
		boss_height = lerp(boss_height, 60, 0.05)
	}
	// If boss is floating in air, can make it bob up and down:
	scr_Boss_Height_Bob(30, 1, 0);
}

//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
	
	if _paired {
		if point_distance(x, y, room_width / 2, obj_Soul_Parent.y) > (global.roomSizeX * 0.4) {
			active_attack = 2;	
			paired_hand.active_attack = 2;
		}
	} else {
		active_attack = 1;	
	}
	
	// Hop leap attack setup example
	if active_attack = 1 {
		// 
		scr_Boss_Attack_Time_Setup_v2(60, 0, 1, 90, 30, 50);
		
		scr_Boss_Jump_Setup_v2(0, 7 * bossmovespeed, x, y);
		
		image_index = 0;
		//scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 7 * bossmovespeed);
    }
	
	if active_attack = 2 {
		// 
		scr_Boss_Attack_Time_Setup_v2(50, 50, 1, 120, 0, 10);
		
		var _speed = point_distance(x, y, room_width / 2, y) / pattern_count
		scr_Boss_Dash_Setup_v2(point_direction(x, y, room_width / 2, paired_hand.y), 0, _speed);
		
		image_index = 0;
    }

}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

scr_default_attack_settings_v2();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
	if active_attack = 1 {
		scr_Boss_Dash_Movement_v2(15,15);
		
		speed = dash_speed;
        direction = dash_direction;
		
		var dir = scr_Soul_Point(x, y + boss_height);
		var dist = scr_Soul_Distance(x, y + boss_height);
		var aimspeed = min(3, dist);
		x += lengthdir_x(aimspeed, dir);
		y += lengthdir_y(aimspeed, dir);
		
		scr_Jump_Movement_v2(5);	
		
		if pattern_count = 1 {
			image_index = 4;
			attack_stats.bullet_count = 6;
			attack_stats.bullet_spread = 60;
			attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 60)
		
			scr_boss_shoot_v2();
		}
	}
	
	if active_attack = 2 {
		scr_Boss_Dash_Movement_v2(1,0);
		
		if image_index < 3 {
			image_index = 3;	
		}
		
		speed = point_distance(x, y, room_width / 2, y) / max(1,(pattern_count - 1));
        direction = point_direction(x,y, room_width / 2, paired_hand.y)
		
		if pattern_count = 1 {
			scr_Screen_Shake(5, 5)
			
			image_index = 4;
			attack_stats.bullet_type = "obj_speed_up_down_bullet_v2"
			attack_stats.boss_xoffset = (room_width / 2) - x
			attack_stats.bullet_count = 12;
			attack_stats.bullet_spread = 30;
			attack_stats.bullet_direction = 0;
			
			if orientation = "left" {
				attack_stats.bullet_life_span += 30;
				attack_stats.bullet_direction += 15;	
			}
			
			scr_boss_shoot_v2();
			
			if orientation = "left" {
				x -= 10;
			} else {
				x += 10;	
			}
			speed = 0;

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
var _mirror = false;

// Handles boss attack sprite animation
if active_attack = 1 {
	sprite_index = spr_cursed_clapper_v2_solo_clap
	var _hold_frame = 2;
	scr_Force_Hold_Frame(2, 65);
	//scr_Boss_Attack_Sprite_v2(spr_cursed_clapper_v2_solo_clap, _hold_frame, 0, 4, 60);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else if active_attack = 2 {
	
	if active_attack_delay <= 0 {
		_mirror = true;	
	}
	
	var _hold_frame = 2;
	scr_Force_Hold_Frame(4, 10)
	scr_Boss_Attack_Sprite_v2(spr_cursed_clapper_v2_duo_clap, _hold_frame, 3, 4, 10);
	if image_index = _hold_frame {
		scr_Boss_Wobble("Horizontal", 2, 0.4, 0)	
	}
} else {
	sprite_index = spr_cursed_clapper_v2;
	if _paired {
		sprite_index = spr_cursed_clapper_v2_paired	
	}
}

scr_Boss_Size_Lerp_Dir(0.15, _mirror);

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
