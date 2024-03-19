function scr_XB02() {
	
	// Extra Shot Stats ya dig
	
	// nah its in shot_creation now
	
	var _procs = floor(global.XB[2] / 7);
	var _proc_mod = global.XB[2] mod 7;
	
	if global.currentweapon = 14 {
		if sWeaponTicker mod 105 < (_proc_mod * 15) {
			_procs += 1;
		}
	} else if _proc_mod > 0 {
		if scr_Chance(7 / _proc_mod) {
			_procs += 1;
		}
	}

	if _procs >= 1 {
		
		var _burst_pow = 0.4;
		var _burst_size = 0.7;
		var _burst_life = 0.5 * current_weapon_stats.Shot_Lifespan
		var _burst_speed = Shot_Speed * 1.2
		var _burst_amount = 5
		repeat(_procs - 1) {
			_burst_pow = _burst_pow * 0.6;
			_burst_size = _burst_size * 0.8;
			_burst_life = _burst_life * 0.7;
			_burst_speed = _burst_speed * 1.1;
			_burst_amount += 3;
		}
			
		Shot_Size += 0.1;
			
		if Shot_Air_Burst_Stats = false {
			Shot_Air_Burst_Stats = [json_parse(json_stringify(current_weapon_stats))]
		} else {
			array_push(Shot_Air_Burst_Stats, json_parse(json_stringify(current_weapon_stats)))	
		}
		Weapon_Split_Visible = 1;
	    Weapon_Split_Hit_Again = 1;
		var burstIndex = array_length(Shot_Air_Burst_Stats) - 1;
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Power", _burst_pow); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Size", _burst_size); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Burst_Speed", _burst_speed);
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Shot_Lifespan", _burst_life); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Air_Burst", true); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Range", 140); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Amount", _burst_amount); 
		variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", -(360 / saccuracy));
		if global.currentweapon = 14 {
			variable_struct_set(Shot_Air_Burst_Stats[burstIndex], "Spread", (360 / saccuracy) / _burst_amount);
		}
	}

}
