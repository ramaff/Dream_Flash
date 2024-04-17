// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scrub_Soul_Weapon_Mod(_cw){
	
	if global.currentweapon < 700 and _cw.Shot_Off_State = 0 {
		if scr_State_Active_Check("Scrub") {
			_cw.Shot_Type = obj_Bubble_Shot;
			_cw.Shot_Accuracy += 75;
		}
	}
}