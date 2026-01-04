// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_N03(_soul = string(id)){
	
	if global.N[3] > 0 {
		var _weap_number = 0
		var _weapon_delay = 600;
		var _weap_slot = 0;
		
		if !variable_struct_exists(global.WeaponJugglingDelay, _soul) {
			variable_struct_set(global.WeaponJugglingDelay, _soul, [])
		}
		
		var _soul_juggle_list = variable_struct_get(global.WeaponJugglingDelay, _soul)

		for(_weap_slot = 0; _weap_slot < global.weaponslots; _weap_slot++) {

			if (array_length(_soul_juggle_list) - 1) < _weap_slot {
				_soul_juggle_list[_weap_slot] = 0;
			}
			
			_weap_number = Soul_Weapons_Control.weapon[_weap_slot].weapon_id;

			if _weap_number != 0 and _soul_juggle_list[_weap_slot] <= 0 {
			
				scr_Weapon_Use_List(_weap_number, _weap_slot)
				
				if _weap_number = 14 {
					_soul_juggle_list[_weap_slot] = 0
				}
			}
		}
	}
}