// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Assign_Shot_Scripts(){

	var _shot_step_scripts = []
	var _shot_draw_scripts = []
	
	if global.A[14] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent and object_index != obj_Defense_Soul_Shot { 
		array_push(_shot_step_scripts, scr_A14)
		array_push(_shot_draw_scripts, scr_A14_Draw)
	}
	
	shot_stats.Shot_Step_Scripts = _shot_step_scripts
	shot_stats.Shot_Draw_Scripts = _shot_draw_scripts

}