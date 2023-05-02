// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OB06(){

	if global.OB[6] > 0 and sWeaponTicker mod 3 = 0 {
		if Shot_Air_Burst_Stats = false {
			//show_debug_message("scr_ob06: " + string(current_weapon_stats))
			//show_debug_message("scr_ob06 stringify: " + string(json_stringify(current_weapon_stats)))
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 0.85); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", 0.9); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 100); 
		var amount = 2 + (global.OB[6] * 2)
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", 360 / amount);
		
		//show_debug_message(Shot_Air_Burst_Stats)
		/*
		if global.OC[6] > 1 {
			var loops = global.OC[6];
			var CStruct = Shot_Air_Burst_Stats;
			for (var i = 1; i <= loops; i++) {
				variable_struct_set(CStruct, "Shot_Air_Burst_Stats", CStruct);
				CStruct = CStruct.Shot_Air_Burst_Stats;
				//if i = 1 {
				//	Shot_Air_Burst_Stats.Shot_Air_Burst_Stats = false;
				//}
			}
			CStruct.Shot_Air_Burst_Stats = false;
		}
		show_debug_message(Shot_Air_Burst_Stats)
		*/
	}

}