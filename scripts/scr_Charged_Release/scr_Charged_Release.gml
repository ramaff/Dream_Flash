function scr_Charged_Release() {

	    if Charge_Hold > 0 and Charge_Hold != 3 {
			
			var _current_weapon_stats = scr_Setup_Default_Weapon_Stats(weaponcharge)
			scr_Modify_Current_Weapon_Stats(_current_weapon_stats);
			
			if Charge_Hold = 2 {
				_current_weapon_stats = scr_Ascending_Soul_Essence_Beam(weaponcharge, _current_weapon_stats);
			}
			
			_current_weapon_stats.Shot_Speed += Charge_Speed;
			_current_weapon_stats.Shot_Power += Charge_Power;
			_current_weapon_stats.Shot_Knock_Back += Charge_Knockback;
			_current_weapon_stats.Shot_Life_Span += Charge_Lifespan;
			
			_current_weapon_stats.Shot_Trail_Area = _current_weapon_stats.Shot_Trail_Area * (_current_weapon_stats.Shot_Size + Charge_Size) / _current_weapon_stats.Shot_Size;
			
			_current_weapon_stats.Shot_Size += Charge_Size;
			
			if weaponcharge = 10 {
	        }
			if weaponcharge = 56 {
	        }
	        if weaponcharge = 110 {
	           _current_weapon_stats.Shot_Crit_Chance = (_current_weapon_stats.Shot_Power - 4) / 4;
	        }
	        if weaponcharge = 111 {
	        }
			if weaponcharge = 153 {
				_current_weapon_stats.Shot_Shield_Power += _current_weapon_stats.Shot_Power / 10;
	        }
			if weaponcharge = 212 {
				if _current_weapon_stats.Shot_Power > 80 {
					_current_weapon_stats.Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 312 {
				if _current_weapon_stats.Shot_Power > 50 {
			        _current_weapon_stats.Shot_Extra_Stats[0] = {
			            Shot_Count: 1,
			            Shot_Extra_Hit_Frequency: 15,
						Shot_Type: "obj_Lesser_Soul_Shot",
			            Shot_Sprite: "spr_Adept_Bolt_Shot",
			            Shot_Power: _current_weapon_stats.Shot_Power / 8,
			            Shot_Speed: 1,
			            Shot_Acceleration: 0.6,
			            Shot_Life_Span: 60,
			            Shot_Homing_Type: 1,
			            Shot_Homing_Speed: 10,
			            Shot_Pierce: 1,
			            Shot_Size: 0.5,
						Shot_Mouse: false
			        }
			        
				}
		
				_current_weapon_stats.Weapon_Split_Visible = 1;
	        }
	        if weaponcharge = 405 {
				if _current_weapon_stats.Shot_Power > 100 {
					_current_weapon_stats.Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 411 {
				if _current_weapon_stats.Shot_Power > 100 {
					_current_weapon_stats.Shot_Screen_Shake = 7;	
				}
	        }
	        if weaponcharge = 412 {
				_current_weapon_stats.Shot_Burst_Power = _current_weapon_stats.Shot_Power / 10;
	        }
			
			var _weapon_meta_data = scr_Hard_Coded_Weapon_Stats(_current_weapon_stats);
		
			scr_Weapon_Output_Item_Mods(_current_weapon_stats, _weapon_meta_data, weaponcharge)
			
			//if _weapon_meta_data.barrage {
			//	scr_Weapon_Barrage(_current_weapon_stats)
			//}
		
			//scr_Shot_Creation(_current_weapon_stats, true);
			scr_Weapon_Output(true, false, _current_weapon_stats)
			
			sWeaponTicker++;
	    }
		
		if global.V[7] > 0 {
			scr_V07_Use();
		}
		



}
