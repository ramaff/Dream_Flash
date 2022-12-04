// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Scrub_Soul_Weapon_Mod(){
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	if global.currentweapon < 700 and Shot_Off_State = 0 {
		if (obj_Soul_Parent.scurrentstate == "Scrub" || (obj_Soul_Parent.stransformedstate == "Scrub" and reverie == true)) {
			Shot_Type = obj_Bubble_Shot;
			Shot_Accuracy += 75;
		}
	}
}