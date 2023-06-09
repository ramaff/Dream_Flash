function scr_XB02() {
	
	// Extra Shot Stats ya dig
	
	// nah its in shot_creation now
	
	var active = false
	
	if global.currentweapon = 14 {
		if sWeaponTicker mod (75 + (15 * global.XB[2])) >= 75 {
			active = true	
		}
	} else {
		if scr_Chance(6 / global.XB[2]) {
			active = true	
		}
	}

	if global.XB[2] > 0 and active = true {
			
		Shot_Size += 0.1
			
		if Shot_Air_Burst_Stats = false {
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
	    Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 0.4); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.7); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", Shot_Speed * 1.5); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 110); 
		var amount = 5
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", -(360 / saccuracy));
		if global.currentweapon = 14 {
			variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", (360 / saccuracy) / amount);
		}
	}

}
