// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Pre_Shoot_Weapon_Essence_Cost(_current_weapon_stats, _single_instance_active, _weap_stop = 0){

	if _single_instance_active {
		_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost / 10;
	}
	
	if _current_weapon_stats.Real_Essence_Cost > 2 {
		_current_weapon_stats.Real_Essence_Cost = ((_current_weapon_stats.Real_Essence_Cost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	} else {
		_current_weapon_stats.Real_Essence_Cost = ((_current_weapon_stats.Real_Essence_Cost - (senergyconservation / 10)) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	}
	
	scr_C12(_current_weapon_stats, _weap_stop);
	scr_C14(_current_weapon_stats);
	
	_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost / scr_Class_Stat_Weapon_Cost_Multiplier();
	
	return _current_weapon_stats.Real_Essence_Cost

}