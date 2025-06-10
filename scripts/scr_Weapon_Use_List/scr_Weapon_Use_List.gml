

function scr_Weapon_Use_List(cWP = global.currentweapon, _weap_slot = 0) {
	var weapStop = 0;

	scr_C08();
	
	//cWP = global.currentweapon;
	
	var _single_instance_active = scr_single_instance_weapon_active(cWP)
	
	if !variable_struct_exists(global.weapon_stats, cWP) {
		exit;	
	}
	
	var _current_weapon_stats = scr_Setup_Default_Weapon_Stats(cWP)
	scr_Modify_Current_Weapon_Stats(_current_weapon_stats);
	
	_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Essence;	
	_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Delay;
	//show_debug_message("Weapon Cost: " + string(weaponCost) + ", Weapon Delay: " + string(weaponDelay))
	
	_current_weapon_stats.Real_Essence_Cost = scr_Pre_Shoot_Weapon_Essence_Cost(_current_weapon_stats, _single_instance_active, weapStop)
	
	_current_weapon_stats.Real_Weapon_Delay = (_current_weapon_stats.Real_Weapon_Delay - sdelayconservation) / sdelayconservationfactor / ((6 + global.Weap[global.currentweapon]) / 6);	
	
	if _current_weapon_stats.Real_Weapon_Delay <= 1 {
	    _current_weapon_stats.Real_Weapon_Delay = 1;
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////Imaginary Weapon Use//////////////////////////
	////////////////////////////////////////////////////////////////////

	var lHalf = 0;

	if (global.L[1] > 0) {
		lHalf = scr_L01(_current_weapon_stats.Real_Essence_Cost);
		if lHalf = 1 {
			_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Real_Weapon_Delay / 1.25;
		}
	}

	
	if senergy >= _current_weapon_stats.Real_Essence_Cost || Charge_Hold = 2 || weapStop != 0 || senergy >= smaxenergy { 
	
		global.soulNoShoot = 0;
		
		//current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		if Charge_Hold = 2 {
			scr_Ascending_Soul_Essence_Beam(cWP);	
		}
		
		scr_D03(_current_weapon_stats);
		scr_D10_Shot_Mod(_current_weapon_stats);
		
		if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
			scr_Bleeding_Soul_Mod(_current_weapon_stats);
			scr_Bleeding_Blade_Use(_current_weapon_stats);
		}
		
		//current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		
		var _weapon_meta_data = scr_Hard_Coded_Weapon_Stats(_current_weapon_stats);
		
		_weapon_meta_data.spawnProjectile = !_single_instance_active;	
		
		if Charge_Hold = 2 {
			scr_Ascending_Soul_Weapon_Mod();
		}
		
		if _weapon_meta_data.barrage {
			
			var fval = 0;
	
			var _i;
			for(_i = 0; _i < 9; _i++) {
				if Shot_Repetition[_i] <= 0 {
					
					//if Charge_Hold = 2 {
					Shot_Repetition_Stats[_i] = variable_clone(_current_weapon_stats)
					//}
					
					if variable_struct_exists(_current_weapon_stats, "Shot_Repetition") {
						Shot_Repetition[_i] = _current_weapon_stats.Shot_Repetition
						if global.OC[3] > 0 {
							Shot_Repetition[_i] += global.OC[3];	
						}
					}
					if variable_struct_exists(_current_weapon_stats, "Shot_Repetition_Type") {
						Shot_Repetition_Type[_i] = _current_weapon_stats.Shot_Repetition_Type
					}
					if variable_struct_exists(_current_weapon_stats, "Shot_Barrage_Speed") {
						Shot_Barrage_Speed[_i] = _current_weapon_stats.Shot_Barrage_Speed
					}
					if variable_struct_exists(_current_weapon_stats, "Shot_Repetition_Forward_Interval") {
						Shot_Repetition_Forward_Interval[_i] = _current_weapon_stats.Shot_Repetition_Forward_Interval
					}
					if variable_struct_exists(_current_weapon_stats, "Shot_Default_Count") {
						Shot_Default_Count[_i] = _current_weapon_stats.Shot_Default_Count
					}
					if variable_struct_exists(_current_weapon_stats, "Shot_Repetition_Direction") {
						Shot_Repetition_Direction[_i] = _current_weapon_stats.Shot_Repetition_Direction
					}
					
					if Shot_Repetition_Direction[_i] > -1 {
						Shot_Repetition_Direction[_i] = _current_weapon_stats.Shot_Direction	
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
			scr_V06(_current_weapon_stats, _v6_procs);
		}
		
		if _weapon_meta_data.spawnProjectile {
			scr_OC03(_current_weapon_stats, cWP);
		}
		scr_Beast_Soul_Shot_Mod(_current_weapon_stats);
		
		_current_weapon_stats.Real_Essence_Cost = scr_Post_Req_Weapon_Essence_Cost(_current_weapon_stats, _v6_procs);
		
		scr_C11_Shot_Mod(_current_weapon_stats)
		
		if _current_weapon_stats.Shot_Beam = 2 {
			_current_weapon_stats.Shot_Damage = false;
			if sWeaponTicker mod 3 = 0 { 
				_current_weapon_stats.Shot_Damage = true;	
			} else {
				_current_weapon_stats.Shot_Power = 0;
			}
		}
		
		if global.N[3] > 0 and cWP = 14 {
			scr_Shot_Power_Set(0.4 + (global.N[3] / 10), _current_weapon_stats)
			scr_Shot_Size_Set(sqrt(0.4 + (global.N[3] / 10)), false, _current_weapon_stats)
		}
		
		scr_Weapon_Output(_weapon_meta_data.spawnProjectile, _weapon_meta_data.minion, _current_weapon_stats, true)
		
		senergy -= _current_weapon_stats.Real_Essence_Cost;
		sWeaponTicker++;
    
		if global.N[3] > 0 {
			global.WeaponJugglingDelay[_weap_slot] += _current_weapon_stats.Real_Weapon_Delay / scr_Class_Stat_Firerate_Multiplier();
		} else {
			sdelay += _current_weapon_stats.Real_Weapon_Delay / scr_Class_Stat_Firerate_Multiplier();
		}
	    sWeaponUseFrame = 1;   
		global.essencebeamtime++;
		
		if weapStop != 0 {
			senergy = max(0, senergy)	
		}
		
		sWeaponWarmUp += _current_weapon_stats.Real_Weapon_Delay * (2 + (300 / 180));
		
		scr_V07_Gain(_current_weapon_stats.Real_Essence_Cost / 5);
		
		//scr_Soul_Stretch("Horizontal", 0.2);
		// set to 0 on weapon Switch
		
		scr_Soul_Attack_Think();
		
	
	} else {
		global.essencebeamtime = 0;	
	}


}
