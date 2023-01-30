

function scr_Weapon_Use_List() {
	weapStop = 0;

	scr_C08();

	weaponCost = 0;
	weaponDelay = 0;
	
	cWP = global.currentweapon;
	
	umbrellaActive = false;
	
	if cWP = 603 and instance_exists(obj_Umbrella_Shot) {
		with (obj_Umbrella_Shot) {
			if shotfolloworigin = other.id {
				other.umbrellaActive = true;
			}
		}
	}
	
	current_weapon_stats = variable_struct_get(global.weapon_stats, string(cWP))
	//show_debug_message(current_weapon_stats)
	
	//weaponCost = variable_struct_get(current_weapon_stats, "Essence");
	//weaponDelay = variable_struct_get(current_weapon_stats, "Delay");
	weaponCost = current_weapon_stats.Essence;	
	weaponDelay = current_weapon_stats.Delay;
	//show_debug_message("Weapon Cost: " + string(weaponCost) + ", Weapon Delay: " + string(weaponDelay))
	
	if cWP = 603 and umbrellaActive {
		weaponCost = weaponCost / 15;
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

	//if global.D10activate >= 1 {
		//weaponCost = weaponCost * (1 + (0.5 * global.D10activate));
	//}


	scr_E11_Weapon();

	weaponCost = weaponCost / scr_Class_Stat_Weapon_Cost_Multiplier();

	var lHalf = 0;

	if (global.L[1] > 0) {
		lHalf = scr_L01();	
		if lHalf = 1 {
			weaponDelay = weaponDelay / 1.25;
		}
	}
	
	if senergy >= weapStop + weaponCost { 
	
		global.soulNoShoot = 0;
		
		scr_Default_Weapon_Stats();
		
		scr_Setup_Weapon_Stats();
		
		barrage = false;
		minion = false;
		spawnProjectile = true;
		
		scr_Hard_Coded_Weapon_Stats(cWP);
		
		if barrage {
			
			var fval = 0;
	
			for(bi = 0; bi < 9; bi++) {
				if Shot_Repetition[bi] <= 0 {
					/*
					Shot_Repetition[bi] = 6;
					Shot_Repetition_Type[bi] = "Hyper Essence";
					//Shot_Repetition_Max[bi] = 7;
					Shot_Barrage_Speed[bi] = 3;
					alarm[11] = (Shot_Barrage_Speed[bi]);

					Shot_Repetition_Forward_Interval[bi] = 0;
					Shot_Default_Count[bi] = Shot_Count;
					*/
					
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition") {
						Shot_Repetition[bi] = current_weapon_stats.Shot_Repetition
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
						Shot_Repetition_Direction[bi] = Shot_Direction	
					}
					
					alarm[11] = (Shot_Barrage_Speed[bi]);
					
					Shot_Repetition_Max[bi] = Shot_Repetition[bi];
					Shot_Repetition[bi]--;
		
					fval = bi;
					break;
				}
			}
			bi = fval;
		}
		
		//show_debug_message(current_weapon_stats)
		
		if spawnProjectile {
			if !minion {
				scr_Shot_Creation(current_weapon_stats);
			} else {
				scr_Soul_Spawn();	
			}
		}
		
		if Shot_Extra != false {
			
			var i = 0
			for(i = 0; i < array_length(Shot_Extra); i++) {
			
				//show_debug_message(string(Shot_Extra))
			
				current_weapon_stats = Shot_Extra[i]
			
				scr_Setup_Weapon_Stats()
				scr_Hard_Coded_Weapon_Stats(cWP);
		
				if spawnProjectile {
					if !minion {
						scr_Shot_Creation(current_weapon_stats);
					} else {
						scr_Soul_Spawn();	
					}
				}
			}
		}
		
		scr_OC03();
		
		scr_XC06_Cost_Adjustment();
		
		if global.V06Overwhelm > (8 - global.V[6]) {
			weaponCost += weaponCost;
		}

		
		if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
			scr_Bleeding_Blade_Use();
		}
    
	    senergy -= weaponCost / (1 + (global.U03boost / 2000));
	    sdelay += weaponDelay / scr_Class_Stat_Firerate_Multiplier();
	    sWeaponUseFrame = 1;   
		sWeaponTicker++;
		global.essencebeamtime++;
		
		sWeaponWarmUp += weaponDelay * (2 + (300 / 180));
		
		scr_V07_Gain(weaponCost / 5);
		
		//scr_Soul_Stretch("Horizontal", 0.2);
		// set to 0 on weapon Switch
		
		scr_U10();
		
		scr_Soul_Attack_Think();
		
	
	} else {
		global.essencebeamtime = 0;	
	}


}
