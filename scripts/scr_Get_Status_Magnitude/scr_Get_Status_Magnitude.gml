// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Status_Magnitude(_soul, _status){

	var _total_mag = 0;
	if variable_struct_exists(_soul.soul_step_status_effects, _status) {
		var _status_type_array = variable_struct_get(_soul.soul_step_status_effects, _status) 
		var _i = 0;
		var _status_instances = array_length(_status_type_array);
		for(_i = 0; _i < _status_instances; _i++) {
			_total_mag += _status_type_array[_i].magnitude;
		}
	}
	
	return _total_mag

}