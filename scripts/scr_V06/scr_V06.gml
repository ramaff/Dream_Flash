function scr_V06(_procs = 0) {
	
	{
		
		current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 1.4;
		current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 2;
		
		var _og_stats = scr_Dupe_Struct(current_weapon_stats)
		
		current_weapon_stats.Shot_Instability += current_weapon_stats.Shot_Speed;
		current_weapon_stats.Shot_Lightning_Trail = 1;
		current_weapon_stats.Shot_Lightning_Trail_Area = 30;
		current_weapon_stats.Shot_Lightning_Trail_Frequency = 7;
		current_weapon_stats.Shot_Lightning_Trail_Color = [255, 0, 0];
		
		if current_weapon_stats.Shot_Air_Burst_Stats = false {
			current_weapon_stats.Shot_Air_Burst_Stats = [scr_Dupe_Struct(_og_stats)]
		} else {
			array_push(current_weapon_stats.Shot_Air_Burst_Stats, scr_Dupe_Struct(_og_stats))	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(current_weapon_stats.Shot_Air_Burst_Stats) - 1;
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Shot_Lightning_Trail", 0); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 0.5); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.75); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", current_weapon_stats.Shot_Speed * 1.3); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Shot_Life_Span", 0.6 * current_weapon_stats.Shot_Life_Span); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Range", 110); 
		var amount = 2 + (_procs * 2)
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Spread", -(90 / saccuracy));
		if global.currentweapon = 14 {
			variable_struct_set(current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Spread", (90 / saccuracy) / amount);
		}
	}

}
