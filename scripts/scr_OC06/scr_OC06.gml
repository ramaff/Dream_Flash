// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OC06(){

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
		
		Shot_Size = sqrt((Shot_Size * Shot_Size) + (0.1 * _procs));
		
		if Shot_Air_Burst_Stats = false {
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 1);
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.9);
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Shot_Life_Span", 0.7 * current_weapon_stats.Shot_Life_Span); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 100 + random(40));
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", 1 + _procs); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", 70);
		
	}

}