// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location: shot creation near the top

function scr_XA06(){
	if global.XA[6] >= 1 and sWeaponTicker mod 4 = 0 {
		Shot_Size += 0.1;
		if Shot_Burst_Stats = false {
			Shot_Burst_Stats = [{}]
		} else {
			array_push(Shot_Burst_Stats, {})	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Burst_Stats) - 1;
		variable_struct_set(Shot_Burst_Stats[burstIndex], "Burst_Power", 0.1); 
		variable_struct_set(Shot_Burst_Stats[burstIndex], "Burst_Soul_Shot_Damage", 10); 
		variable_struct_set(Shot_Burst_Stats[burstIndex], "Burst_Size", 0.8); 
		var amount = 4 + (global.XA[6] * 4)
		variable_struct_set(Shot_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(Shot_Burst_Stats[burstIndex], "Spread", 360 / amount);
		variable_struct_set(Shot_Burst_Stats[burstIndex], "Shot_Sprite", "spr_Troubling_Shot");
	}
}