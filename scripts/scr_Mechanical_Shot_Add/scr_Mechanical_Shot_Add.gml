// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Mechanical_Shot_Add(){
	
	if current_weapon_stats.Shot_Off_State = 1 {
		return 0;
	}

	
	if scr_State_Active_Check("Mechanical") and self.object_index = obj_Basic_Soul {
		return 1 + floor(random(99 * (((global.soulstateformboost - 1) * 2) + 1)) / 100);
	}
	return 0;
}