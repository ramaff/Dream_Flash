

function scr_Weapon_Use_List(cWP = global.currentweapon, _weap_slot = 0) {

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
	
	_current_weapon_stats.Real_Essence_Cost = scr_Pre_Shoot_Weapon_Essence_Cost(_current_weapon_stats, _single_instance_active)
	
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
	
	_current_weapon_stats.Real_Essence_Cost = max(0, _current_weapon_stats.Real_Essence_Cost);
	
	if senergy < _current_weapon_stats.Real_Essence_Cost {
		scr_C08();	
	}
	
	var _shoot_anyways = false;
	if variable_struct_exists(soul_step_status_effects, "temper") {
		_shoot_anyways = true;	
	}

	
	if senergy >= _current_weapon_stats.Real_Essence_Cost || Charge_Hold = 2 || _shoot_anyways || senergy >= smaxenergy { 
	
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
			scr_Ascending_Soul_Weapon_Mod(_current_weapon_stats);
		}
		
		scr_V06(_current_weapon_stats);
		scr_OB06(_current_weapon_stats);
		scr_OC06(_current_weapon_stats);
		scr_XB02(_current_weapon_stats);
		
		scr_Beast_Soul_Shot_Mod(_current_weapon_stats);
		
		_current_weapon_stats.Real_Essence_Cost = scr_Post_Req_Weapon_Essence_Cost(_current_weapon_stats);
		
		scr_C11_Shot_Mod(_current_weapon_stats)
		
		if global.N[3] > 0 and cWP = 14 {
			scr_Shot_Power_Set(0.4 + (global.N[3] / 10), _current_weapon_stats)
			scr_Shot_Size_Set(sqrt(0.4 + (global.N[3] / 10)), false, _current_weapon_stats)
		}
		
		if _weapon_meta_data.barrage {
			scr_Weapon_Barrage(_current_weapon_stats)
		} else if _weapon_meta_data.spawnProjectile {
			scr_OC03(_current_weapon_stats, cWP);
		}
		
		if _current_weapon_stats.Shot_Beam = 2 {
			_current_weapon_stats.Shot_Damage = false;
			if sWeaponTicker mod 3 = 0 { 
				_current_weapon_stats.Shot_Damage = true;	
			} else {
				_current_weapon_stats.Shot_Power = 0;
			}
		}
		
		scr_Weapon_Output(_weapon_meta_data.spawnProjectile, _weapon_meta_data.minion, _current_weapon_stats, true)
		
		scr_H11_Status_Build_Up(_current_weapon_stats);
		senergy -= _current_weapon_stats.Real_Essence_Cost;
		sWeaponTicker++;
    
		if global.N[3] > 0 {
			var _current_soul_juggle = variable_struct_get(global.WeaponJugglingDelay, string(id))
			var _fac = 1;
			if object_index = obj_Copy_Cat_Soul {
				_fac = 3;	
			}
			_current_soul_juggle[_weap_slot] += _fac * _current_weapon_stats.Real_Weapon_Delay;
		} else {
			sdelay += _current_weapon_stats.Real_Weapon_Delay;
		}
	    sWeaponUseFrame = 1;   
		global.essencebeamtime++;
		
		sWeaponWarmUp += _current_weapon_stats.Real_Weapon_Delay * (2 + (300 / 180));
		
		scr_V07_Gain(_current_weapon_stats.Real_Essence_Cost / 5);
		
		//scr_Soul_Stretch("Horizontal", 0.2);
		// set to 0 on weapon Switch
		
		scr_Soul_Attack_Think();
		
	
	} else {
		global.essencebeamtime = 0;	
	}


}
