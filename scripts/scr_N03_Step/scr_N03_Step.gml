// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_N03_Step(_delay_regen = 0){
	
	if global.N[3] > 0 {

		var _weap_slot = 0;
		var _juggle_regen = _delay_regen * (0.4 + (global.N[3] / 10))

		for(_weap_slot = 0; _weap_slot < global.weaponslots; _weap_slot++) {
			global.WeaponJugglingDelay[_weap_slot] -= _juggle_regen;
			if global.WeaponJugglingDelay[_weap_slot] < 0 {
			    global.WeaponJugglingDelay[_weap_slot] = 0;
			}
		}
	}
}