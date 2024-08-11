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
	
	current_weapon_stats = scr_Setup_Default_Weapon_Stats(weaponcharge)
	scr_Modify_Current_Weapon_Stats();

	if Charge_Hold = 2 {
		scr_Ascending_Soul_Essence_Beam(weaponcharge);
	}
	scr_Setup_Charge_Stats()
	
	Charge_Total_Time = current_weapon_stats.Charge_Time;
	
	var _weapon_cost = current_weapon_stats.Essence;	
	var _weapon_delay = current_weapon_stats.Delay;
	
	if global.OC[3] > 0 {
		_weapon_delay = _weapon_delay * 3;
		_weapon_cost = _weapon_cost * 3;	
		Charge_Essence = Charge_Essence * 3;
		Charge_Total_Time = Charge_Total_Time * 3;
	}
	
	
	var _charge_rate = 1 * sdelayconservationfactor * ((6 + global.Weap[weaponcharge]) / 6);
	_charge_rate = _charge_rate * ((160 + global.souldexterity + global.souldexterityTemp) / 160);
	
	//Charge_Total_Time = 0;
	//Charge_Essence = 0;
	on = 0;
	
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
				
				if variable_struct_exists(current_weapon_stats, "Shot_Knock_Back") {
					Shot_Charge_Knockback = current_weapon_stats.Shot_Knock_Back * 1;
				} else {
					Shot_Charge_Knockback = 0;
				}
				
				if variable_struct_exists(current_weapon_stats, "Shot_Size") {
					Shot_Charge_Size = current_weapon_stats.Shot_Size * 1.6;
				} else {
					Shot_Charge_Size = 0
				}
				
				Shot_Charge_Lifespan = 0;
				
				Charge_Total_Time = 15 + (_weapon_delay * 3);
				Charge_Essence = _weapon_cost * 4;
			} else {
				Shot_Charge_Power = Shot_Charge_Power * 1.15;	
			}
		}
		
		var _charge_portion = _charge_rate / Charge_Total_Time
		
	    if senergy >= smaxenergy || senergy >= (((Charge_Essence - senergyconservation) / Charge_Total_Time) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6)) {
		    if Charge_Time < Charge_Total_Time {
		        Charge_Speed += _charge_portion * Shot_Charge_Speed;
		        Charge_Power += _charge_portion * Shot_Charge_Power;
				Charge_Lifespan += _charge_portion * Shot_Charge_Lifespan;
				Charge_Knockback += _charge_portion * Shot_Charge_Knockback;
		        Charge_Time += _charge_rate;
		        Charge_Size += _charge_portion * Shot_Charge_Size;
				on = 1;
		    }
		}
	} 

	var drain = ((Charge_Essence - senergyconservation) / Charge_Total_Time) / senergyconservationfactor / ((6 + global.Weap[weaponcharge]) / 6) / (1 + ((global.soulperception + global.soulperceptionTemp) / 160));
	var slot = variable_struct_get(Soul_Weapons_Control.weapon[0], "slot");
	var eeContain = global.L01essence[slot];
	
	scr_V07_Gain(drain / 5);

	if on != 0 and global.L[1] > 0 and eeContain > 0 {
		global.L01essence[slot] -= drain;
	} else if on != 0 {
		sdelay = (_weapon_delay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[weaponcharge]) / 6);
		senergy -= drain;
		
		//Charge_Essence += drain
	}
	
	
}
