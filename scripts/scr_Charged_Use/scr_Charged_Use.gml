function scr_Charged_Use() {
	if global.currentweapon = 10 || global.currentweapon = 110 || global.currentweapon = 111 || global.currentweapon = 153 || global.currentweapon = 212 || global.currentweapon = 312 || global.currentweapon = 405 || global.currentweapon = 411 || global.currentweapon = 412 {
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
			//show_debug_message(string(global.weapon_stats))
			//show_debug_message(string(current_weapon_stats))
			scr_Setup_Charge_Stats()
		
		    if senergy > ((weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6)) {        
		        sdelay += (weaponDelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        energyCost = (weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		        Charge_Hold = 1;
		    }
	
			/*
		    if global.currentweapon = 10 {
		        if senergy > ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[10]) / 6)) {        
		            sdelay += (6 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[10]) / 6);
		            energyCost = (10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[10]) / 6);
		            Charge_Hold = 1;
		        }
		    }
	
			if global.currentweapon = 56 {
		        if senergy > ((15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[56]) / 6)) {        
		            sdelay += (14 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[56]) / 6);
		            energyCost = (15 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[56]) / 6);
		            Charge_Hold = 1;
		        }
		    }
    
		    if global.currentweapon = 110 {
		        if senergy > ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[110]) / 6)) {        
		            sdelay += (9 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[110]) / 6);
		            energyCost = (10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[110]) / 6);
		            Charge_Hold = 1;
		        }
		    }
    
		    if global.currentweapon = 111 {
		        if senergy > ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[110]) / 6)) {        
		            sdelay += (6 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[110]) / 6);
		            energyCost = (14 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[110]) / 6);
		            Charge_Hold = 1;
		        }
		    }
		
			if global.currentweapon = 153 {
		        if senergy > ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[153]) / 6)) {        
		            sdelay += (10 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[153]) / 6);
		            energyCost = (10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[153]) / 6);
		            Charge_Hold = 1;
		        }
		    }
	
			if global.currentweapon = 212 {
		        if senergy > ((20 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[212]) / 6)) {        
		            sdelay += (9 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[212]) / 6);
		            energyCost = (20 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[212]) / 6);
		            Charge_Hold = 1;
		        }
		    }
    
		    if global.currentweapon = 312 {
		        if senergy > ((24 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[312]) / 6)) {        
		            sdelay += (9 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[312]) / 6);
		            energyCost = (24 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[312]) / 6);
		            Charge_Hold = 1;
		        }
		    }
    
		    if global.currentweapon = 405 {
		        if senergy > ((12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[405]) / 6)) {        
		            sdelay += (6 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[405]) / 6);
		            energyCost = (12 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[405]) / 6);
		            Charge_Hold = 1;
		        }
		    }
    
		    if global.currentweapon = 411 {
		        if senergy > ((10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[411]) / 6)) {        
		            sdelay += (7.5 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[411]) / 6);
		            energyCost = (10 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[411]) / 6);
		            Charge_Hold = 1;
		        }
		    }
    
		    if global.currentweapon = 412 {
		        if senergy > ((35 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[412]) / 6)) {        
		            sdelay += (10 - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[412]) / 6);
		            energyCost = (35 - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[412]) / 6);
		            Charge_Hold = 1;
		        }
		    }
			*/
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
