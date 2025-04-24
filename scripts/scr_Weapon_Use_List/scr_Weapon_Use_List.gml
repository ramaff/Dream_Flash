

function scr_Weapon_Use_List(cWP = global.currentweapon, _weap_slot = 0) {
	var weapStop = 0;

	scr_C08();

	var weaponCost = 0;
	var weaponDelay = 0;
	
	//cWP = global.currentweapon;
	
	var _umbrella_active = scr_umbrella_active(cWP)
	
	var current_weapon_stats = scr_Setup_Default_Weapon_Stats(cWP)
	scr_Modify_Current_Weapon_Stats();
	
	weaponCost = current_weapon_stats.Essence;	
	weaponDelay = current_weapon_stats.Delay;
	//show_debug_message("Weapon Cost: " + string(weaponCost) + ", Weapon Delay: " + string(weaponDelay))
	
	weaponCost = scr_Pre_Shoot_Weapon_Essence_Cost(weaponCost, cWP, _umbrella_active, weapStop)
	
	weaponDelay = (weaponDelay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6);	
	
	if weaponDelay <= 1 {
	    weaponDelay = 1;
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////Imaginary Weapon Use//////////////////////////
	////////////////////////////////////////////////////////////////////

	var lHalf = 0;

	if (global.L[1] > 0) {
		lHalf = scr_L01(weaponCost);
		if lHalf = 1 {
			weaponDelay = weaponDelay / 1.25;
		}
	}

	
	if senergy >= weaponCost || Charge_Hold = 2 || weapStop != 0 || senergy >= smaxenergy { 
	
		global.soulNoShoot = 0;
		
		//current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		if Charge_Hold = 2 {
			scr_Ascending_Soul_Essence_Beam(cWP);	
		}
		
		scr_D03();
		scr_D10_Shot_Mod();
		
		if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
			scr_Bleeding_Soul_Mod(current_weapon_stats);
			scr_Bleeding_Blade_Use(current_weapon_stats);
		}
		
		//current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		
		var barrage = false;
		var minion = false;
		var spawnProjectile = true;
		
		if cWP = 603 {
			spawnProjectile = !_umbrella_active;	
		}
		
		scr_Hard_Coded_Weapon_Stats(current_weapon_stats);
		
		if Charge_Hold = 2 {
			scr_Ascending_Soul_Weapon_Mod();
		}
		
		if barrage {
			
			var fval = 0;
	
			var _i;
			for(_i = 0; _i < 9; _i++) {
				if Shot_Repetition[_i] <= 0 {
					
					//if Charge_Hold = 2 {
					Shot_Repetition_Stats[_i] = variable_clone(current_weapon_stats)
					//}
					
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition") {
						Shot_Repetition[_i] = current_weapon_stats.Shot_Repetition
						if global.OC[3] > 0 {
							Shot_Repetition[_i] += global.OC[3];	
						}
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition_Type") {
						Shot_Repetition_Type[_i] = current_weapon_stats.Shot_Repetition_Type
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Barrage_Speed") {
						Shot_Barrage_Speed[_i] = current_weapon_stats.Shot_Barrage_Speed
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition_Forward_Interval") {
						Shot_Repetition_Forward_Interval[_i] = current_weapon_stats.Shot_Repetition_Forward_Interval
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Default_Count") {
						Shot_Default_Count[_i] = current_weapon_stats.Shot_Default_Count
					}
					if variable_struct_exists(current_weapon_stats, "Shot_Repetition_Direction") {
						Shot_Repetition_Direction[_i] = current_weapon_stats.Shot_Repetition_Direction
					}
					
					if Shot_Repetition_Direction[_i] > -1 {
						Shot_Repetition_Direction[_i] = current_weapon_stats.Shot_Direction	
					}
					
					alarm[11] = (Shot_Barrage_Speed[_i]);
					
					//Shot_Repetition[bi]--;
					Shot_Repetition_Max[_i] = Shot_Repetition[_i];
	
					break;
				}
			}
			bi = _i;
		}
		
		//show_debug_message(current_weapon_stats)
		
		var _v6_procs = scr_V06_Active() 
		if _v6_procs > 0 {
			scr_V06(_v6_procs);
		}
		
		if spawnProjectile {
			scr_OC03(cWP);
		}
		scr_Beast_Soul_Shot_Mod(current_weapon_stats);
		
		var realCost = scr_Post_Req_Weapon_Essence_Cost(weaponCost, _v6_procs);
		
		current_weapon_stats.Real_Essence_Cost = realCost
		
		scr_C11_Shot_Mod(realCost)
		
		if current_weapon_stats.Shot_Beam = 2 {
			current_weapon_stats.Shot_Damage = false;
			if sWeaponTicker mod 3 = 0 { 
				current_weapon_stats.Shot_Damage = true;	
			} else {
				current_weapon_stats.Shot_Power = 0;
			}
		}
		
		if global.N[3] > 0 and cWP = 14 {
			scr_Shot_Power_Set(0.4 + (global.N[3] / 10), current_weapon_stats)
			scr_Shot_Size_Set(sqrt(0.4 + (global.N[3] / 10)), false, current_weapon_stats)
		}
		
		scr_Weapon_Output(spawnProjectile, minion, current_weapon_stats)
		
		//if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
		//	scr_Bleeding_Blade_Use();
		//}
		
		senergy -= realCost;
		sWeaponTicker++;
    
		if global.N[3] > 0 {
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
