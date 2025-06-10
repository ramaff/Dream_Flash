// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: before shot_creation

// hardcoded stat adjustment in charged use/hold, and in obj_Charge_Indicator

function scr_OC03(_current_weapon_stats, cWP = global.currentweapon){
	if cWP = 13 || cWP = 403 || cWP = 211 || cWP = 14 {
		exit;	
	}
	if global.OC[3] > 0 {
		
		_current_weapon_stats.Real_Weapon_Delay = _current_weapon_stats.Real_Weapon_Delay * 3;
		_current_weapon_stats.Real_Essence_Cost = _current_weapon_stats.Real_Essence_Cost * 3;	
		
		var fval = 0;
		var _i = 0;
		for(_i = 0; _i < 9; _i++) {
			if Shot_Repetition[_i] <= 0 {
				Shot_Repetition[_i] = global.OC[3] + 2;
				Shot_Repetition_Type[_i] = "Stubborn";
				if _current_weapon_stats.Shot_Mouse = 0 {
					Shot_Repetition_Direction[_i] = _current_weapon_stats.Shot_Direction;
				} else {
					Shot_Repetition_Direction[_i] = point_direction(x,y,mouse_x,mouse_y);
				}
				//Shot_Repetition_Max[_i] = 7;
				Shot_Barrage_Speed[_i] = (7 + (_current_weapon_stats.Real_Weapon_Delay / 4)) / 2;
				alarm[11] = (Shot_Barrage_Speed[_i]);

				Shot_Repetition_Stats[_i] = variable_clone(_current_weapon_stats);
				
				Shot_Repetition_Forward_Interval[_i] = 0;
				Shot_Default_Count[_i] = _current_weapon_stats.Shot_Count;
		
				fval = _i;
				break;
			}
		}
		bi = fval;
	}
}