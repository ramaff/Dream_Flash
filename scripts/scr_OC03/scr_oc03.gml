// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OC03(cWP = global.currentweapon){
	if cWP = 13 || cWP = 16 || cWP = 403 || cWP = 211 || cWP = 14 {
		exit;	
	}
	if global.OC[3] > 0 {
		
		weaponDelay = weaponDelay * 2.5;
		weaponCost = weaponCost * 2.5;
		
		var fval = 0;
		for(bi = 0; bi < 9; bi++) {
			if Shot_Repetition[bi] <= 0 {
				Shot_Repetition[bi] = global.OC[3] + 1;
				Shot_Repetition_Type[bi] = "Stubborn";
				if Shot_Mouse = 0 {
					Shot_Repetition_Direction[bi] = Shot_Direction;
				} else {
					Shot_Repetition_Direction[bi] = point_direction(x,y,mouse_x,mouse_y);
				}
				//Shot_Repetition_Max[bi] = 7;
				Shot_Barrage_Speed[bi] = 7;
				alarm[11] = (Shot_Barrage_Speed[bi]);

				if global.D[10] > 0 {
					Shot_Count = Shot_Count / 2;
					Shot_Count -= global.D[10] - 1;
				}
				
				Shot_Repetition_Forward_Interval[bi] = 0;
				Shot_Default_Count[bi] = Shot_Count;
				
				//show_debug_message("OC3 Shot Count: " + string(Shot_Count))
				//show_debug_message("OC3 Shot Repetition: " + string(Shot_Repetition[bi]))
		
				fval = bi;
				break;
			}
		}
		bi = fval;
	}
}