

function scr_Weapon_Use_List(cWP = global.currentweapon, _weap_slot = 0) {
	weapStop = 0;

	scr_C08();

	weaponCost = 0;
	weaponDelay = 0;
	
	//cWP = global.currentweapon;
	
	var _umbrella_active = false;
	
	if cWP = 603 and instance_exists(obj_Umbrella_Shot) {
		with (obj_Umbrella_Shot) {
			if shot_stats.Shot_Follow_Origin = other.id {
				_umbrella_active = true;
			}
		}
	}
	
	current_weapon_stats = scr_Setup_Default_Weapon_Stats(cWP)
	scr_Modify_Current_Weapon_Stats();
	
	weaponCost = current_weapon_stats.Essence;	
	weaponDelay = current_weapon_stats.Delay;
	//show_debug_message("Weapon Cost: " + string(weaponCost) + ", Weapon Delay: " + string(weaponDelay))
	
	if cWP = 603 and _umbrella_active {
		weaponCost = weaponCost / 10;
	}
	
	if weaponCost > 2 {
		weaponCost = ((weaponCost - senergyconservation) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	} else {
		weaponCost = ((weaponCost - (senergyconservation / 10)) / senergyconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6)) 
	}
	weaponDelay = (weaponDelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6);	
	
	if weaponDelay <= 1 {
	    weaponDelay = 1;
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////Imaginary Weapon Use//////////////////////////
	////////////////////////////////////////////////////////////////////

	scr_C12();

	scr_C14();

	scr_E11_Weapon();

	weaponCost = weaponCost / scr_Class_Stat_Weapon_Cost_Multiplier();

	var lHalf = 0;

	if (global.L[1] > 0) {
		lHalf = scr_L01(weaponCost);
		if lHalf = 1 {
			weaponDelay = weaponDelay / 1.25;
		}
	}

	
	if senergy >= weaponCost || Charge_Hold = 2 || weapStop != 0 || senergy >= smaxenergy { 
	
		global.soulNoShoot = 0;
		
		//scr_Default_Weapon_Stats();
		
		if Charge_Hold = 2 {
			scr_Ascending_Soul_Essence_Beam(cWP);	
		}
		
		scr_D03();
		scr_D10_Shot_Mod();
		
		if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
			scr_Bleeding_Soul_Mod(current_weapon_stats);
			scr_Bleeding_Blade_Use(current_weapon_stats);
		}
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		
		barrage = false;
		minion = false;
		spawnProjectile = true;
		
		if cWP = 603 {
			spawnProjectile = !_umbrella_active;	
		}
		
		scr_Hard_Coded_Weapon_Stats(current_weapon_stats);
		
		if Charge_Hold = 2 {
			scr_Ascending_Soul_Weapon_Mod();
		}
		
		if barrage {
			
			var fval = 0;
	
			for(bi = 0; bi < 9; bi++) {
				if Shot_Repetition[bi] <= 0 {
					
					//if Charge_Hold = 2 {
					Shot_Repetition_Stats[bi] = variable_clone(current_weapon_stats)
					//}
					
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition") {
						Shot_Repetition[bi] = current_weapon_stats.Shot_Repetition
						if global.OC[3] > 0 {
							Shot_Repetition[bi] += global.OC[3];	
						}
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition_Type") {
						Shot_Repetition_Type[bi] = current_weapon_stats.Shot_Repetition_Type
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Barrage_Speed") {
						Shot_Barrage_Speed[bi] = current_weapon_stats.Shot_Barrage_Speed
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition_Forward_Interval") {
						Shot_Repetition_Forward_Interval[bi] = current_weapon_stats.Shot_Repetition_Forward_Interval
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Default_Count") {
						Shot_Default_Count[bi] = current_weapon_stats.Shot_Default_Count
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition_Direction") {
						Shot_Repetition_Direction[bi] = current_weapon_stats.Shot_Repetition_Direction
					}
					
					if Shot_Repetition_Direction[bi] > -1 {
						Shot_Repetition_Direction[bi] = current_weapon_stats.Shot_Direction	
					}
					
					alarm[11] = (Shot_Barrage_Speed[bi]);
					
					//Shot_Repetition[bi]--;
					Shot_Repetition_Max[bi] = Shot_Repetition[bi];
		
					fval = bi;
					break;
				}
			}
			bi = fval;
		}
		
		//show_debug_message(current_weapon_stats)
		
		scr_XC06_Cost_Adjustment();
		
		scr_XA03_Cost_Adjustment();
		
		var _v6_procs = scr_V06_Active() 
		if _v6_procs > 0 {
			weaponCost += weaponCost * _v6_procs;
			scr_V06(_v6_procs);
		}
		
		if spawnProjectile {
			scr_OC03(cWP);
		}
		
		var realCost = weaponCost * scr_U03_Ess_Cost();
		
		scr_C11_Shot_Mod(realCost)
		
		if current_weapon_stats.Shot_Beam = 2 {
			current_weapon_stats.Shot_Damage = false;
			if sWeaponTicker mod 3 = 0 { 
				current_weapon_stats.Shot_Damage = true;	
			} else {
				current_weapon_stats.Shot_Power = 0;
			}
		}	
		
		scr_Weapon_Output(spawnProjectile, minion, current_weapon_stats)
		
		//if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
		//	scr_Bleeding_Blade_Use();
		//}
		
		senergy -= realCost;
		sWeaponTicker++;
    
		if global.N[5] > 0 {
			global.WeaponJugglingDelay[_weap_slot] += weaponDelay / scr_Class_Stat_Firerate_Multiplier();
		} else {
			sdelay += weaponDelay / scr_Class_Stat_Firerate_Multiplier();
		}
	    sWeaponUseFrame = 1;   
		global.essencebeamtime++;
		
		if weapStop != 0 {
			senergy = max(0, senergy)	
		}
		
		sWeaponWarmUp += weaponDelay * (2 + (300 / 180));
		
		scr_V07_Gain(weaponCost / 5);
		
		//scr_Soul_Stretch("Horizontal", 0.2);
		// set to 0 on weapon Switch
		
		scr_Soul_Attack_Think();
		
	
	} else {
		global.essencebeamtime = 0;	
	}


}
