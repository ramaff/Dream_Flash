

function scr_S01_Status_Build_Up() {
	
	var _near_bulls = 0
	var _soul = id;
	with(obj_soul_hurt_v2) {
		if distance_to_object(_soul) < 90 {
			_near_bulls++;	
		}
	}
	with(obj_Soul_Hurt) {
		if distance_to_object(_soul) < 90 {
			_near_bulls++;	
		}
	}
	
	if _near_bulls > 0 {
		var _curr_defensive = scr_Get_Status_Time("defensive_omen");
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
	scr_Soul_Step_Omen_Generic("defensive_omen", 360, scr_S01)
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
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation(current_weapon_stats);

	}

}
