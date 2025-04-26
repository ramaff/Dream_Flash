// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Set_Soul_Scripts(_soul = obj_Soul_Parent.id){

	_soul.soul_step_before_scripts = scr_Set_Soul_Step_Before_Scripts(_soul)
	_soul.soul_step_after_scripts = scr_Set_Soul_Step_After_Scripts(_soul)
	//_soul.soul_step_status_effect_scripts = scr_Set_Soul_Step_Status_Effect_Scripts(_soul)
	//_soul.soul_status_effect_scripts = []

}