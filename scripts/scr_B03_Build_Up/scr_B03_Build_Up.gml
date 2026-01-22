// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spawn_Airbag(){

	var current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
	current_weapon_stats = {
		Shot_Speed: 0,
		Shot_Power: 0,
		Shot_Sprite: "spr_Airbag_Shot",
		Shot_Type: "obj_Soul_Physics_Shot",
		Shot_Life_Span: 360,
		//Shot_Angle: 0,
		Shot_Pierce: 1000,
		Shot_Point_Angle: false,
		Spread: 0,
		Amount: 1,
		Shot_Bullet_Displace: 25,
		Shot_Knock_Back: 25,
		Shot_Extra_Hits_Frequency: 5
	}
    
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	scr_Shot_Creation(current_weapon_stats);

}

function scr_B03_Status_Build_Up() {
	
	if Soul_Hearts_Control.heart[global.currentheart, 2] = 103 {
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
			var _curr_air_bag = scr_Get_Status_Time("air_bag_omen");
			var _status_effect = {
				"duration": _curr_air_bag + 5 + _near_bulls,
				"tick_script": scr_Soul_Air_Bag_Omen,
				"tick_frequency": 1
			}
			var _status_effect_2 = {
				"duration": _curr_air_bag + 5 + _near_bulls,
				"max_duration": 600,
				"bar_sprite": "spr_Air_Bag_Omen_Status_Effect_Bar"
			}
			variable_struct_set(soul_step_status_effects, "air_bag_omen", [_status_effect])
			variable_struct_set(soul_draw_status_effects, "air_bag_omen", [_status_effect_2])
		}
	}
}

function scr_Soul_Air_Bag_Omen() {
	scr_Soul_Step_Omen_Generic("air_bag_omen", 600, scr_Spawn_Airbag)
}
