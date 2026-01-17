function scr_C07() {
	// Location Soul Step Event

	if global.soulNoShoot >= 15 and senergy < smaxenergy {
	    var _curr_mental_reload = scr_Get_Status_Time("mental_reload_omen");
		var _status_effect = {
			"duration": _curr_mental_reload + 5,
			"tick_script": scr_Mental_Reload_Omen,
			"tick_frequency": 1
		}
		var _status_effect_2 = {
			"duration": _curr_mental_reload + 5,
			"max_duration": 240,
			"bar_sprite": "spr_Defensive_Omen_Status_Effect_Bar"
		}
		variable_struct_set(soul_step_status_effects, "mental_reload_omen", [_status_effect])
		variable_struct_set(soul_draw_status_effects, "mental_reload_omen", [_status_effect_2])

	}

}

function scr_Mental_Reload_Omen() {
	scr_Soul_Step_Omen_Generic("mental_reload_omen", 240, scr_Mental_Reload)
}

function scr_Mental_Reload() {
	scr_Refresh_Soul(100 * global.C[7])	
}