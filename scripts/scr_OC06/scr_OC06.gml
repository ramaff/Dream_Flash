// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OC06(){

	if global.OC[6] > 0 {
		Shot_Burst_Stats = current_weapon_stats;
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		//Shot_Burst_Stats.Shot_Power = Shot_Burst_Stats.Shot_Power * 0.8;
		//Shot_Burst_Stats.Shot_Size = Shot_Burst_Stats.Shot_Size * 0.9;
		variable_struct_set(Shot_Burst_Stats, "Burst_Type", "OC6"); 
		variable_struct_set(Shot_Burst_Stats, "Burst_Power", Shot_Power * 0.85); 
		variable_struct_set(Shot_Burst_Stats, "Burst_Size", Shot_Size * 0.9); 
		variable_struct_set(Shot_Burst_Stats, "Air_Burst", true); 
		variable_struct_set(Shot_Burst_Stats, "Range", 130); 
		variable_struct_set(Shot_Burst_Stats, "Amount", 1 + global.OC[6]); 
		variable_struct_set(Shot_Burst_Stats, "Spread", 90);
		/*
		if global.OC[6] > 1 {
			var loops = global.OC[6];
			var CStruct = Shot_Burst_Stats;
			for (var i = 1; i <= loops; i++) {
				variable_struct_set(CStruct, "Shot_Burst_Stats", CStruct);
				CStruct = CStruct.Shot_Burst_Stats;
				//if i = 1 {
				//	Shot_Burst_Stats.Shot_Burst_Stats = false;
				//}
			}
			CStruct.Shot_Burst_Stats = false;
		}
		show_debug_message(Shot_Burst_Stats)
		*/
	}

}