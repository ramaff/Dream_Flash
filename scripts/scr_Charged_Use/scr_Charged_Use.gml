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

			current_weapon_stats = scr_Setup_Default_Weapon_Stats(weaponcharge)
			scr_Modify_Current_Weapon_Stats();
			
			if Charge_Hold = 2 {
				scr_Ascending_Soul_Essence_Beam(weaponcharge);
			}
			
			weaponCost = current_weapon_stats.Essence;	
			weaponDelay = current_weapon_stats.Delay;
			
			if global.OC[3] > 0 {
				weaponDelay = weaponDelay * 3;
				weaponCost = weaponCost * 3;	
			}
			
			scr_Setup_Charge_Stats()
		
		    if senergy >= smaxenergy || senergy > ((weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6)) {        
		        sdelay += (weaponDelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        energyCost = (weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        Charge_Hold = 1;
				if _ascending and !scr_Charged_Weapon(cw) {
					Charge_Hold = 2;	
				}
		    }

		}
		
		if Charge_Hold > 0 {
	
			var slot = Soul_Weapons_Control.weapon[0,1];
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
