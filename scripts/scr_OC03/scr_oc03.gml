// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: before shot_creation

// hardcoded stat adjustment in charged use/hold, and in obj_Charge_Indicator

function scr_OC03(cWP = global.currentweapon){
	if cWP = 13 || cWP = 403 || cWP = 211 || cWP = 14 {
		exit;	
	}
	if global.OC[3] > 0 {
		
		weaponDelay = weaponDelay * 3;
		weaponCost = weaponCost * 3;
		
		var fval = 0;
		for(bi = 0; bi < 9; bi++) {
			if Shot_Repetition[bi] <= 0 {
				Shot_Repetition[bi] = global.OC[3] + 2;
				Shot_Repetition_Type[bi] = "Stubborn";
				if current_weapon_stats.Shot_Mouse = 0 {
					Shot_Repetition_Direction[bi] =scr_Dupe_Struct( current_weapon_stats.Shot_Direction);
				} else {
					Shot_Repetition_Direction[bi] = point_direction(x,y,mouse_x,mouse_y);
				}
				//Shot_Repetition_Max[bi] = 7;
				Shot_Barrage_Speed[bi] = (7 + (weaponDelay / 4)) / 2;
				alarm[11] = (Shot_Barrage_Speed[bi]);

				Shot_Repetition_Stats[bi] = variable_clone(current_weapon_stats);
				
				Shot_Repetition_Forward_Interval[bi] = 0;
				Shot_Default_Count[bi] = current_weapon_stats.Shot_Count;
		
				fval = bi;
				break;
			}
		}
		bi = fval;
	}
}