// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OB06(){
	
	var active = false
	
	if global.currentweapon = 14 {
		if sWeaponTicker mod 60 >= 45 {
			active = true	
		}
	} else {
		if sWeaponTicker mod 4 = 0 {
			active = true	
		}
	}

	if global.OB[6] > 0 and active = true {
		
		Shot_Size += 0.1;
		
		if Shot_Air_Burst_Stats = false {
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 0.7); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.8); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 100); 
		var amount = 2 + (global.OB[6] * 2)
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", 360 / amount);
		
		
	}

}