// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Status_Effect_Add(_status_effects, _effect_name, _effect_to_add){
	if !variable_struct_exists(_status_effects, _effect_name) {
		variable_struct_set(_status_effects, _effect_name, [])	
	}
	var _status_effect = variable_struct_get(_status_effects, _effect_name);
	array_push(_status_effect, _effect_to_add)
}