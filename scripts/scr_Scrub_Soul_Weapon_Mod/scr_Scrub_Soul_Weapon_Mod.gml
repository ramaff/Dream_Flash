// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scrub_Soul_Weapon_Mod(){
	
	if global.currentweapon < 700 and current_weapon_stats.Shot_Off_State = 0 {
		if scr_State_Active_Check("Scrub") {
			current_weapon_stats.Shot_Type = obj_Bubble_Shot;
			current_weapon_stats.Shot_Accuracy += 75;
		}
	}
}