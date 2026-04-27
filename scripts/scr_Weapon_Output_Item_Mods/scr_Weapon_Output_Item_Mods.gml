// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Weapon_Output_Item_Mods(_current_weapon_stats, _weapon_meta_data, cWP){
	scr_D03(_current_weapon_stats);
	scr_D10_Shot_Mod(_current_weapon_stats);
	if obj_Soul_Parent.scurrentstate = "Bleeding" and cWP < 700 {
		scr_Bleeding_Soul_Mod(_current_weapon_stats);
		scr_Bleeding_Blade_Use(_current_weapon_stats);
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
}