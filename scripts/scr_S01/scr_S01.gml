

function scr_S01_Status_Build_Up() {
	
	var _near_bulls = 0
	var _soul = id;
	with(obj_soul_hurt_v2) {
		if distance_to_object(_soul) < 75 {
			_near_bulls++;	
		}
	}
	with(obj_Soul_Hurt) {
		if distance_to_object(_soul) < 75 {
			_near_bulls++;	
		}
	}
	
	if _near_bulls > 0 {
		var _curr_defensive = 0
		if variable_struct_exists(soul_step_status_effects, "defensive_omen") {
			if array_length(soul_step_status_effects.defensive_omen) > 0 {
				_curr_defensive = soul_step_status_effects.defensive_omen[0].duration
			}
		}
		var _status_effect = {
			"duration": _curr_defensive + 5 + _near_bulls,
			"tick_script": scr_Soul_Defensive_Omen,
			"tick_frequency": 1
		}
		var _status_effect_2 = {
			"duration": _curr_defensive + 5 + _near_bulls,
			"max_duration": 360,
			"bar_sprite": "spr_Defensive_Omen_Status_Effect_Bar"
		}
		variable_struct_set(soul_step_status_effects, "defensive_omen", [_status_effect])
		variable_struct_set(soul_draw_status_effects, "defensive_omen", [_status_effect_2])
	}
}

function scr_Soul_Defensive_Omen() {
	if variable_struct_exists(soul_step_status_effects, "defensive_omen") {
		if array_length(soul_step_status_effects.defensive_omen) > 0 {
			var _curr_defensive = soul_step_status_effects.defensive_omen[0].duration
			if _curr_defensive > 360 {
				soul_step_status_effects.defensive_omen[0].duration -= 360;
				if variable_struct_exists(soul_draw_status_effects, "defensive_omen") {
					if array_length(soul_draw_status_effects.defensive_omen) > 0 {
						soul_draw_status_effects.defensive_omen[0].duration -= 360;
					}
				}
				scr_S01();
			}
			//Print_DF(soul_step_status_effects.defensive_omen[0].duration)
		}
	}
}

function scr_S01() {
	// Soul Hit Reactions

	if global.S[1] > 0 {

	    var current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 36,
			Shot_Accuracy: 36,
			Shot_Count: 2 + (8 * global.S[1]),
			Shot_Sprite: "spr_Defensive_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 10.5,
			Shot_Power: 5 + ((20 + global.soulparanoia + global.soulparanoiaTemp) / 2),
			Shot_Knock_Back: 30,
			Shot_Bullet_Displace: 35,
			Shot_Life_Span: 90,
			Shot_Pierce: 4,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5,
            Shot_Forward_Amount: 40
		};
		
		/*if hitType = "Boss" and instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Count = 5;
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		} */
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation(current_weapon_stats);

	}


}
