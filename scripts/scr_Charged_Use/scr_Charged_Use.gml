function scr_Charged_Use() {
	if scurrentstate = "Ascending" || global.currentweapon = 10 || global.currentweapon = 110 || global.currentweapon = 111 || global.currentweapon = 153 || global.currentweapon = 212 || global.currentweapon = 312 || global.currentweapon = 405 || global.currentweapon = 411 || global.currentweapon = 412 {
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

			current_weapon_stats = variable_struct_get(global.weapon_stats, string(weaponcharge))
			
			weaponCost = current_weapon_stats.Essence;	
			weaponDelay = current_weapon_stats.Delay;
			scr_Setup_Charge_Stats()
		
		    if senergy > ((weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6)) {        
		        sdelay += (weaponDelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        energyCost = (weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        Charge_Hold = 1;
		    }

		}
	
		var slot = Soul_Weapons_Control.weapon[0,1];
		var eeContain = global.L01essence[slot];

		if global.L[1] > 0 and eeContain > 0 {
			global.L01essence[slot] -= energyCost;
		} else {
			senergy -= energyCost;
		}

		scr_V07_Gain(energyCost / 5);

	}
}
