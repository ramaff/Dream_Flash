// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Struct_Merge(a, b, shared) {
    var r = a;
    if (shared) {
	    var p = variable_struct_get_names(a);
	    for (var i = 0; i < array_length(p); i++) {
		    if (variable_struct_exists(b, p[i]))          
		        variable_struct_set(r, p[i], variable_struct_get(b, p[i]));
		    }
	} else {
		var p = variable_struct_get_names(b);
		for (var i = 0; i < array_length(p); i++) {
		    variable_struct_set(r, p[i], variable_struct_get(b, p[i]));
		}
	}
    return r;
}