// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Execute_List_Of_Scripts(_scripts = []){

	var _i;
	var _script_count = array_length(_scripts)
	for(_i = 0; _i < _script_count; _i++) {
		script_execute(_scripts[_i])	
	}

}