// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// weapon list script

function scr_XC06_Cost_Adjustment(_current_weapon_stats){

	if global.XC[6] > 0 {
		_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * 0.66;
		_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Real_Weapon_Delay * 0.83;
	}

}