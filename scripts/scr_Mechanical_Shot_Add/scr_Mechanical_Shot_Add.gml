// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Mechanical_Shot_Add(){
	
	if Shot_Off_State = 1 {
		return 0;
	}
	
	var reverie = false;
	if global.F[5] >= 1 {
		reverie = scr_Chance(10 / global.F[5]);
	}
	
	if (obj_Soul_Parent.scurrentstate = "Mechanical" || (obj_Soul_Parent.stransformedstate = "Mechanical" and reverie = true)) and self.object_index = obj_Basic_Soul {
		return 1 + floor(random(99 * (((global.soulstateformboost - 1) * 2) + 1)) / 100);
	}
	return 0;
}