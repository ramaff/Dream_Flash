// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_P09() {

	if global.P[9] > 0 {
		var _procs = scr_Item_Sometimes_Trigger_Check(global.P[9], 6) 
		if _procs >= 1 {
			current_weapon_stats.Shot_Count = 5 * current_weapon_stats.Shot_Count
			current_weapon_stats.Shot_Spread = 360 / current_weapon_stats.Shot_Count
		}
	}

}