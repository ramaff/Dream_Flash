// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_N04(){
	
	if global.N[4] > 0 {

		var _weap_slot = 0;
		var _weap_number = 0;
		var _new_weap_number = 0;
		var _weap_stats = {
			"Complexity": "Low"
		}

		for(_weap_slot = 0; _weap_slot < global.weaponslots; _weap_slot++) {
			_weap_number = Soul_Weapons_Control.weapon[_weap_slot].weapon_id
			
			if _weap_number != 0 {
				_weap_stats = variable_struct_get(global.weapon_stats, string(_weap_number))
			
				if _weap_stats.Complexity = "Low" {
					_new_weap_number = scr_Pool_Pick(global.complexWeaponPool)
				}
				if _weap_stats.Complexity = "Medium" || _weap_stats.Complexity = "High" {
					_new_weap_number = scr_Pool_Pick(global.masterfulWeaponPool)
				}
			} else {
				_new_weap_number = scr_Pool_Pick(global.simpleWeaponPool)
			}
			
			Soul_Weapons_Control.weapon[_weap_slot].weapon_id = _new_weap_number;
		}
	}
}