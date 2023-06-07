function scr_V06() {
	
	var active = false
	
	if global.currentweapon = 14 {
		if global.V06Overwhelm > ((8 - global.V[6]) * 15) {
			active = true	
		}
		if global.V06Overwhelm > 119 {
			global.V06Overwhelm = 0;	
		}
	} else {
		if global.V06Overwhelm > (8 - global.V[6]) {
			active = true	
		}
		if global.V06Overwhelm > 7 {
			global.V06Overwhelm = 0;	
		}
	}

	if active = true {
		
		Shot_Size += 0.25;
		
		//shotduplicatesprite = sprite_index;
		//image = 1;
		Shot_Power = Shot_Power * 2;
		//Shot_Power_Max = Shot_Power_Max * 2;
		//shotPowelLevel = shotPowerLevel * 2;
		
		
		if Shot_Air_Burst_Stats = false {
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 0.5); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.75); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", Shot_Speed * 2); 
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
