function scr_Charged_Hold() {
	
	Shot_Charge_Power = 0;
	Shot_Charge_Speed = 0;
	Shot_Charge_Lifespan = 0;
	Shot_Charge_Knockback = 0;
	Shot_Charge_Size = 0;
	Charge_Essence = 0;
	Charge_Total_Time = 0;
	
	current_weapon_stats = variable_struct_get(global.weapon_stats, string(weaponcharge))
	scr_Setup_Charge_Stats()
	
	weaponCost = current_weapon_stats.Essence;	
	weaponDelay = current_weapon_stats.Delay;
	
	
	crate = 1 * sdelayconservationfactor * ((6 + global.Weap[weaponcharge]) / 6);
	crate = crate * ((160 + global.souldexterity + global.souldexterityTemp) / 160);
	
	wtt = 0;
	wenergy = 0;
	on = 0;
	
	var cUpAmt = ((3 + global.P[5]) / 3);
	
	if scurrentstate = "Ascending" || weaponcharge = 10 || weaponcharge = 110 || weaponcharge = 111 || weaponcharge = 153 || weaponcharge = 212 || weaponcharge = 312 || weaponcharge = 405 || weaponcharge = 411 || weaponcharge = 412 {
		if scurrentstate = "Ascending" {
			Shot_Charge_Power = current_weapon_stats.Shot_Power * 10;
			Shot_Charge_Speed = current_weapon_stats.Shot_Speed * 0.25;
			Shot_Charge_Lifespan = 0;	
			Shot_Charge_Knockback = 10;
			Shot_Charge_Size = current_weapon_stats.Shot_Size * 1.5;
			Charge_Total_Time = 120;
			Charge_Essence = weaponCost * 7.5;
		}
		
		wtt = Charge_Total_Time;
		wdelay = weaponDelay;
		wenergy = Charge_Essence;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * Shot_Charge_Speed / wtt;
	        Charge_Power += crate * (ct / wtt) * Shot_Charge_Power / wtt;
			Charge_Lifespan += crate * (ct / wtt) * Shot_Charge_Lifespan / wtt;
			Charge_Knockback += crate * (ct / wtt) * Shot_Charge_Knockback / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * Shot_Charge_Size / wtt;
			on = 1;
	    }
	} 

	var drain = (ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6) / (1 + ((global.soulperception + global.soulperceptionTemp) / 160));
	var slot = Soul_Weapons_Control.weapon[0,1];
	var eeContain = global.L01essence[slot];
	
	scr_V07_Gain(drain / 5);

	if on != 0 and global.L[1] > 0 and eeContain > 0 {
		global.L01essence[slot] -= drain;
	} else if on != 0 {
		sdelay = (wdelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		senergy -= drain;
	}
	
	
}
