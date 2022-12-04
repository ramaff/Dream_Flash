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
	
	if weaponcharge = 10 || weaponcharge = 110 || weaponcharge = 111 || weaponcharge = 153 || weaponcharge = 212 || weaponcharge = 312 || weaponcharge = 405 || weaponcharge = 411 || weaponcharge = 412 {
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
	
	/*
	if weaponcharge = 10 {
	    wtt = 90;
		wdelay = 10;
		wenergy = 40;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[10]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 5 / wtt;
	        Charge_Power += crate * (ct / wtt) * 95 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.75 / wtt;
			on = 1;
	    }
	}

	if weaponcharge = 56 {
	    wtt = 90;
		wdelay = 14;
		wenergy = 70;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[56]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 0 / wtt;
	        Charge_Power += crate * (ct / wtt) * 180 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.4 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 110 {
	    wtt = 120;
		wdelay = 6;
		wenergy = 70;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[110]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 18 / wtt;
	        Charge_Power += crate * (ct / wtt) * 50 / wtt;
	        Charge_Lifespan += crate * (ct / wtt) * 50 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.1 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 111 {
	    wtt = 60;
		wdelay = 10;
		wenergy = 70;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[111]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 12 / wtt;
	        Charge_Power += crate * (ct / wtt) * 97 / wtt;
	        Charge_Lifespan += crate * (ct / wtt) * 0 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.1 / wtt;
			
			on = 1;
	    }
	}
	
	if weaponcharge = 153 {
	    wtt = 120;
		wdelay = 6;
		wenergy = 100;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[153]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 1 / wtt;
	        Charge_Power += crate * (ct / wtt) * 180 / wtt;
	        Charge_Lifespan += crate * (ct / wtt) * 0 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.2 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 212 {
	    wtt = 120;
		wdelay = 15;
		wenergy = 70;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[212]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 20 / wtt
	        Charge_Power += crate * (ct / wtt) * 125 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.1 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 312 {
	    wtt = 120;
		wdelay = 9;
		wenergy = 115;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[312]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 0.5 / wtt
	        Charge_Power += crate * (ct / wtt) * 61 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.6 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 405 {
	    wtt = 120;
		wdelay = 8;
		wenergy = 75;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[405]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 1 / wtt
	        Charge_Power += crate * (ct / wtt) * 155 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.65 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 411 {
		wtt = 120;
		wdelay = 8;
		wenergy = 90;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[411]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 0.5 / wtt
	        Charge_Power += crate * (ct / wtt) * 105 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.8 / wtt;
			
			on = 1;
	    }
	}

	if weaponcharge = 412 {
		wtt = 150;
		wdelay = 10;
		wenergy = 150;
	    ct = wtt * cUpAmt;
	    if senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[412]) / 6))
	    if Charge_Time < ct {
	        Charge_Speed += crate * (ct / wtt) * 2 / wtt;
	        Charge_Power += crate * (ct / wtt) * 175 / wtt;
	        Charge_Time += crate * ct / wtt;
	        Charge_Size += crate * (ct / wtt) * 0.65 / wtt;
			
			on = 1;
	    }
	}
	*/

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
