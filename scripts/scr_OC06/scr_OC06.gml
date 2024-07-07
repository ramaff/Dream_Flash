// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OC06(_cw){

	var _procs = floor(global.OC[6] / 3);
	var _proc_mod = global.OC[6] mod 3;
	
	if global.currentweapon = 14 {
		if sWeaponTicker mod 45 < (_proc_mod * 15) {
			_procs += 1;
		}
	} else {
		if sWeaponTicker mod 3 < _proc_mod {
			_procs += 1;
		}
	}
 
	if _procs >= 1 {
		
		_cw.Shot_Size = sqrt((_cw.Shot_Size * _cw.Shot_Size) + (0.1 * _procs));
		
		if _cw.Shot_Air_Burst_Stats = false {
			_cw.Shot_Air_Burst_Stats = [{}]
		} else {
			array_push(_cw.Shot_Air_Burst_Stats, {})	
		}
		_cw.Weapon_Split_Visible = 1;
        _cw.Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(_cw.Shot_Air_Burst_Stats) - 1;
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Shot_Type", _cw.Shot_Type); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 1);
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.9);
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Life_Span", 0.7);
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Range", 100 + random(40));
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Amount", 1 + _procs); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Spread", 70);
		
	}

}