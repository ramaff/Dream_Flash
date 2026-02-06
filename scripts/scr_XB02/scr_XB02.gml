function scr_XB02(_cw) {
	
	// Extra Shot Stats
	// nah its in shot_creation now
	
	var _procs = scr_Item_Sometimes_Trigger_Check(global.XB[2], 7) 

	if _procs >= 1 {
		
		var _burst_pow = 0.5;
		var _burst_size = 0.7;
		var _burst_life = 0.5;
		var _burst_speed = 1.3
		var _burst_amount = 5
		repeat(_procs - 1) {
			_burst_pow = _burst_pow * 0.6;
			_burst_size = _burst_size * 0.8;
			_burst_life = _burst_life * 0.8;
			_burst_speed = _burst_speed * 1.1;
			_burst_amount += 3;
		}
			
		_cw.Shot_Size += 0.1;
		_cw.Real_Essence_Cost = _cw.Real_Essence_Cost * (2 + _procs);
			
		if _cw.Shot_Air_Burst_Stats = false {
			_cw.Shot_Air_Burst_Stats = [{}]
		} else {
			array_push(_cw.Shot_Air_Burst_Stats, {})	
		}
		_cw.Weapon_Split_Visible = 1;
	    _cw.Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(_cw.Shot_Air_Burst_Stats) - 1;
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Shot_Type", _cw.Shot_Type); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Power", _burst_pow); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Size", _burst_size); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", _burst_speed);
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Burst_Life_Span", _burst_life); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Range", 140); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Amount", _burst_amount); 
		variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Spread", -(360 / saccuracy));
		if global.currentweapon = 14 {
			variable_struct_set(_cw.Shot_Air_Burst_Stats[burstIndex], "Spread", (360 / saccuracy) / _burst_amount);
		}
	}

}
