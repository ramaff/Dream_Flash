function scr_Charged_Use() {
	var cw = global.currentweapon;
	

	var _ascending = scr_State_Active_Check("Ascending")
	if _ascending and global.currentweapon != 605 and (global.currentweapon < 500 || global.currentweapon > 600) {
		_ascending = true
	} else {
		_ascending = false	
	}
	
	if _ascending || scr_Charged_Weapon(cw) {
		var energyCost = 0;
		Shot_Charge_Power = 0;
		Shot_Charge_Speed = 0;
		Shot_Charge_Lifespan = 0;
		Shot_Charge_Knockback = 0;
		Shot_Charge_Size = 0;
		Charge_Essence = 0;
		Charge_Total_Time = 0;
	
		if sdelay <= 0 { 
			weaponcharge = global.currentweapon;

			var _current_weapon_stats = scr_Setup_Default_Weapon_Stats(weaponcharge)
			scr_Modify_Current_Weapon_Stats(_current_weapon_stats);
			
			if Charge_Hold = 2 {
				_current_weapon_stats = scr_Ascending_Soul_Essence_Beam(weaponcharge, _current_weapon_stats);
			}
			
			_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Essence;	
			_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Delay;
			
			if global.OC[3] > 0 {
				_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Real_Weapon_Delay * 3;
				_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * 3;	
			}
			
			scr_Setup_Charge_Stats(_current_weapon_stats)
		
		    if senergy >= smaxenergy || senergy > ((_current_weapon_stats.Real_Essence_Cost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6)) {        
		        sdelay += (_current_weapon_stats.Real_Weapon_Delay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        energyCost = (_current_weapon_stats.Real_Essence_Cost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        Charge_Hold = 1;
				if _ascending and !scr_Charged_Weapon(cw) {
					Charge_Hold = 2;	
				}
		    }

		}
		
		if Charge_Hold > 0 {
	
			var slot = variable_struct_get(Soul_Weapons_Control.weapon[0], "slot");
			var eeContain = global.L01essence[slot];

			if global.L[1] > 0 and eeContain > 0 {
				global.L01essence[slot] -= energyCost;
			} else {
				senergy -= energyCost;
			}

			scr_V07_Gain(energyCost / 5);
			
			//Charge_Essence += energyCost;
		}

	}
}
