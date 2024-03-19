// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OB06(){
	
	var _procs = floor(global.OB[6] / 5);
	var _proc_mod = global.OB[6] mod 5;
	
	if global.currentweapon = 14 {
		if sWeaponTicker mod 75 < (_proc_mod * 15) {
			_procs += 1;
		}
	} else {
		if sWeaponTicker mod 5 < _proc_mod {
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
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Shot_Lifespan", 0.6 * current_weapon_stats.Shot_Lifespan); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 100); 
		var amount = 2 + (_procs * 2)
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", 360 / amount);
		
		
	}

}