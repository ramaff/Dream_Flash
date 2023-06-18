function scr_V06() {
	
	var active = scr_V06_Active()

	if active = true {
		
		Shot_Size = Shot_Size * 1.4;

		Shot_Power = Shot_Power * 2;
		
		if Shot_Air_Burst_Stats = false {
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 0.5); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.65); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", Shot_Speed * 1.6); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 110); 
		var amount = 4
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", -(90 / saccuracy));
		if global.currentweapon = 14 {
			variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", (90 / saccuracy) / amount);
		}
	}
	
	
	if global.V[6] > 0 {
		global.V06Overwhelm++;
	}

}
