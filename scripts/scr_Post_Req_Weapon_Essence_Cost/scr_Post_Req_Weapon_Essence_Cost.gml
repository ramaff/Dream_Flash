// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Post_Req_Weapon_Essence_Cost(_current_weapon_stats, _v6_procs = 0){

	scr_XC06_Cost_Adjustment(_current_weapon_stats);
		
	scr_XA04_Cost_Adjustment(_current_weapon_stats);
	
	_current_weapon_stats.Real_Essence_Cost += _current_weapon_stats.Real_Essence_Cost * _v6_procs;
	_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * scr_U03_Ess_Cost()
	
	return _current_weapon_stats.Real_Essence_Cost

}