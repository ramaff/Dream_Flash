// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_N05(){
	
	if global.N[5] > 0 {
		var _weap_number = 0
		var _weapon_delay = 600;
		var _weap_slot = 0;

		for(_weap_slot = 0; _weap_slot < global.weaponslots; _weap_slot++) {
			_weap_number = Soul_Weapons_Control.weapon[_weap_slot].weapon_id;

			if _weap_number != 0 and global.WeaponJugglingDelay[_weap_slot] <= 0 {
			
				scr_Weapon_Use_List(_weap_number, _weap_slot)
				
				if _weap_number = 14 {
					global.WeaponJugglingDelay[_weap_slot] = 0
				}
			}
		}
	}
}