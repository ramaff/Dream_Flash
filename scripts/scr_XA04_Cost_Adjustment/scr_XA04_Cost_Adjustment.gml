// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// loc: weapon list

function scr_XA04_Cost_Adjustment(_current_weapon_stats){

	if global.XA[4] > 0 and global.currenthearttype = 53 {
		repeat(global.XA[4]) {
			_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * 0.8;
			_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Real_Weapon_Delay * 0.6;
		}
	}

}