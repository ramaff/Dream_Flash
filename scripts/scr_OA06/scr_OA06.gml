// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA06(){
// Location: Shot Creation Script

	if global.OA[6] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		var chance = 30 / (1 + global.OA[6]);
		if scr_Chance(chance) {
			shot_stats.Shot_Miracle += 1;
			
			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 2;
			alarm[0] = shot_stats.Shot_Life_Span;
		    //shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			//speed = shot_stats.Shot_Speed;
			
			shot_stats.Shot_Speed = shot_stats.Shot_Speed * 0.55;
			speed = shot_stats.Shot_Speed;
			
			if shot_stats.Shot_Homing_Type = 0 {
		        shot_stats.Shot_Homing_Type = 1;
			}
	        if shot_stats.Shot_Homing_Range < 300 {
	            shot_stats.Shot_Homing_Range = 300
	        } 
			
			shot_stats.Shot_Size += 0.1;
			image_xscale = shot_stats.Shot_Size;
			image_yscale = shot_stats.Shot_Size;
			
		}
	}
}