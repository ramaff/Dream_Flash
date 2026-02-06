function scr_V06(_current_weapon_stats) {
	
	var _procs = scr_Item_Sometimes_Trigger_Check(global.V[6], 8) 
 
	if _procs >= 1 {
		
		_current_weapon_stats.Shot_Size = scr_Sqrt_Add(_current_weapon_stats.Shot_Size, _current_weapon_stats.Shot_Size * 0.4 * _procs);
		_current_weapon_stats.Shot_Power = _current_weapon_stats.Shot_Power * (1 + _procs);
		_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * (2 + _procs);
		
		//var _og_stats = scr_Dupe_Struct(_current_weapon_stats)
		
		_current_weapon_stats.Shot_Instability += _current_weapon_stats.Shot_Speed;
		_current_weapon_stats.Shot_Lightning_Trail = 1;
		_current_weapon_stats.Shot_Lightning_Trail_Area = 30;
		_current_weapon_stats.Shot_Lightning_Trail_Frequency = 7;
		_current_weapon_stats.Shot_Lightning_Trail_Color = [255, 0, 0];
		
		if _current_weapon_stats.Shot_Air_Burst_Stats = false {
			_current_weapon_stats.Shot_Air_Burst_Stats = [{}]
		} else {
			array_push(_current_weapon_stats.Shot_Air_Burst_Stats, {})	
		}
		Weapon_Split_Visible = 1;
        Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(_current_weapon_stats.Shot_Air_Burst_Stats) - 1;
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Shot_Type", _current_weapon_stats.Shot_Type); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Shot_Lightning_Trail", 0); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Power", 1 / (1 + _procs)); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Size", sqrt(1 / (1 + _procs))); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", 1.4); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Burst_Life_Span", 0.5);
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Range", 130);
		var amount = 2 + (_procs * 2)
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Amount", amount); 
		variable_struct_set(_current_weapon_stats.Shot_Air_Burst_Stats[burstIndex], "Spread", -(90 / saccuracy));
	}

}
