// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_N03_Step(){
		
	var _delay_regen = sdelayregenfactor

	var _weap_slot = 0;
	var _juggle_regen = _delay_regen * (0.4 + (global.N[3] / 10))
	
	var _souls = struct_get_names(global.WeaponJugglingDelay);
	var _s_index = 0;
	var _soul_count = array_length(_souls)
	
	for(_s_index = 0; _s_index < _soul_count; _s_index++) {
		var _soul = _souls[_s_index];
		var _soul_juggle = variable_struct_get(global.WeaponJugglingDelay, _soul)
		for(_weap_slot = 0; _weap_slot < global.weaponslots; _weap_slot++) {
			_soul_juggle[_weap_slot] -= _juggle_regen;
			if _soul_juggle[_weap_slot] < 0 {
				_soul_juggle[_weap_slot] = 0;
			}
		}
	}
}