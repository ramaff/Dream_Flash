// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Status_Time(_status_name){
	var _curr_time = 0
	if variable_struct_exists(soul_step_status_effects, _status_name) {
		var _status = variable_struct_get(soul_step_status_effects, _status_name)
		if array_length(_status) > 0 {
			_curr_time = _status[0].duration
		}
	}
	return _curr_time
}