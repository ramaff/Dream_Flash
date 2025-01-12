// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Post_Req_Weapon_Essence_Cost(_weapon_cost, _v6_procs = 0){

	scr_XC06_Cost_Adjustment();
		
	scr_XA03_Cost_Adjustment();
	
	_weapon_cost += _weapon_cost * _v6_procs;
	_weapon_cost = _weapon_cost * scr_U03_Ess_Cost()
	
	// idk if this is needed:
	/*if global.OC[3] > 0 {
		weaponCost = weaponCost * 3;	
	} */
	
	return _weapon_cost

}