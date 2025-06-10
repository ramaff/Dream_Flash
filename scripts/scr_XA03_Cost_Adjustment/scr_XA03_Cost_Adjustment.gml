// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// loc: weapon list

function scr_XA03_Cost_Adjustment(_current_weapon_stats){

	if global.temperActive = true {
		repeat(global.XA[3]) {
			_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * 0.8;
			_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Real_Weapon_Delay * 0.6;
		}
	}

}