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
		
		current_weapon_stats.Shot_Size = sqrt((current_weapon_stats.Shot_Size * current_weapon_stats.Shot_Size) + (0.1 * _procs));
		
		if current_weapon_stats.Shot_Air_Burst_Stats = false {
			current_weapon_stats.Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(current_weapon_stats.Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		current_weapon_stats.Weapon_Split_Visible = 1;
        current_weapon_stats.Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(current_weapon_stats.Shot_Air_Burst_Stats) - 1;
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 1); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.9); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Shot_Life_Span", 0.6 * current_weapon_stats.Shot_Life_Span); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Range", 100); 
		var amount = 2 + (_procs * 2)
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Spread", 360 / amount);
		
		
	}

}