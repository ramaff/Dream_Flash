// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Pre_Shoot_Weapon_Essence_Cost(_weapon_cost, cWP, _umbrella_active, _weap_stop = 0){

	if cWP = 603 and _umbrella_active {
		_weapon_cost = _weapon_cost / 10;
	}
	
	if _weapon_cost > 2 {
		_weapon_cost = ((_weapon_cost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	} else {
		_weapon_cost = ((_weapon_cost - (senergyconservation / 10)) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	}
	
	scr_C12(_weapon_cost, _weap_stop);
	scr_C14(_weapon_cost);
	
	_weapon_cost = _weapon_cost / scr_Class_Stat_Weapon_Cost_Multiplier();
	
	return _weapon_cost

}