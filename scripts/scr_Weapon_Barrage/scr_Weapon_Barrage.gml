// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Weapon_Barrage(_current_weapon_stats){
			
	var fval = 0;
	
	var _i;
	for(_i = 0; _i < 9; _i++) {
		if Shot_Repetition[_i] <= 0 {
					
			//if Charge_Hold = 2 {
			Shot_Repetition_Stats[_i] = variable_clone(_current_weapon_stats)
			//}
					
			if variable_struct_exists(_current_weapon_stats, "Shot_Repetition") {
				Shot_Repetition[_i] = _current_weapon_stats.Shot_Repetition
				if global.OC[3] > 0 {
					Shot_Repetition[_i] += global.OC[3];	
				}
			}
			if variable_struct_exists(_current_weapon_stats, "Shot_Repetition_Type") {
				Shot_Repetition_Type[_i] = _current_weapon_stats.Shot_Repetition_Type
			}
			if variable_struct_exists(_current_weapon_stats, "Shot_Barrage_Speed") {
				Shot_Barrage_Speed[_i] = _current_weapon_stats.Shot_Barrage_Speed
			}
			if variable_struct_exists(_current_weapon_stats, "Shot_Repetition_Forward_Interval") {
				Shot_Repetition_Forward_Interval[_i] = _current_weapon_stats.Shot_Repetition_Forward_Interval
			}
			//if variable_struct_exists(_current_weapon_stats, "Shot_Default_Count") {
			//	Shot_Default_Count[_i] = _current_weapon_stats.Shot_Default_Count
			//} else {
				Shot_Default_Count[_i] = _current_weapon_stats.Shot_Count	
			//}
			if variable_struct_exists(_current_weapon_stats, "Shot_Repetition_Direction") {
				Shot_Repetition_Direction[_i] = _current_weapon_stats.Shot_Repetition_Direction
			}
					
			if Shot_Repetition_Direction[_i] > -1 {
				Shot_Repetition_Direction[_i] = _current_weapon_stats.Shot_Direction	
			}
					
			alarm[11] = (Shot_Barrage_Speed[_i]);
					
			//Shot_Repetition[bi]--;
			Shot_Repetition_Max[_i] = Shot_Repetition[_i];
	
			break;
		}
	}
	bi = _i;

}