function scr_Charged_Hold() {
	
	if weaponcharge == 0 {
		exit;
	}
	
	Shot_Charge_Power = 0;
	Shot_Charge_Speed = 0;
	Shot_Charge_Lifespan = 0;
	Shot_Charge_Knockback = 0;
	Shot_Charge_Size = 0;
	Charge_Essence = 0;
	Charge_Total_Time = 0;
	
	//scr_Default_Weapon_Stats();
	
	current_weapon_stats = variable_struct_get(global.weapon_stats, string(weaponcharge))
	if Charge_Hold = 2 {
		scr_Ascending_Soul_Essence_Beam(weaponcharge);
	}
	scr_Setup_Charge_Stats()
	
	weaponCost = current_weapon_stats.Essence;	
	weaponDelay = current_weapon_stats.Delay;
	
	if global.OC[3] > 0 {
		weaponDelay = weaponDelay * 2.5;
		weaponCost = weaponCost * 2.5;	
		Charge_Essence = Charge_Essence * 2.5;
		Charge_Total_Time = Charge_Total_Time * 2.5;
	}
	
	
	crate = 1 * sdelayconservationfactor * ((6 + global.Weap[weaponcharge]) / 6);
	crate = crate * ((160 + global.souldexterity + global.souldexterityTemp) / 160);
	
	wtt = 0;
	wenergy = 0;
	on = 0;
	
	var cUpAmt = ((3 + global.P[5]) / 3);
	
	var charged_weap = scr_Charged_Weapon(weaponcharge)
	
	if scurrentstate = "Ascending" || charged_weap {
		if scurrentstate = "Ascending" {
			if !charged_weap {
				if variable_struct_exists(current_weapon_stats, "Shot_Speed") {
					Shot_Charge_Speed = current_weapon_stats.Shot_Speed * 0.1;
				} else {
					Shot_Charge_Speed = 0;	
				}
				
				if variable_struct_exists(current_weapon_stats, "Shot_Power") {
					Shot_Charge_Power = current_weapon_stats.Shot_Power * 8.5;
				} else {
					Shot_Charge_Power = 0
				}
				
				if variable_struct_exists(current_weapon_stats, "Shot_Knockback") {
					Shot_Charge_Knockback = current_weapon_stats.Shot_Knockback * 1;
				} else {
					Shot_Charge_Knockback = 0;
				}
				
				if variable_struct_exists(current_weapon_stats, "Shot_Size") {
					Shot_Charge_Size = current_weapon_stats.Shot_Size * 1.5;
				} else {
					Shot_Charge_Size = 0
				}
				
				Shot_Charge_Lifespan = 0;
				
				Charge_Total_Time = 15 + (weaponDelay * 3);
				Charge_Essence = weaponCost * 4;
			} else {
				Shot_Charge_Power = Shot_Charge_Power * 1.15;	
			}
		}
		
		
		wtt = Charge_Total_Time;
		wdelay = weaponDelay;
		wenergy = Charge_Essence;
	    ct = wtt * cUpAmt;
	    if senergy >= smaxenergy || senergy >= ((ct / wtt) * ((wenergy - senergyconservation) / wtt) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6)) {
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
