// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Print_DF(mess = "hmm", max_depth = 2){
	mess = string(mess)
	var _a = debug_get_callstack(max_depth);
    for (var i = 0; i < array_length(_a); ++i;)
    {
		mess = string(_a[i]) + ", " + mess;
    }
	show_debug_message(mess)
}