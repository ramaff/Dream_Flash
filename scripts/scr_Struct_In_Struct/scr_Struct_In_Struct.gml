// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Struct_In_Struct(struct) constructor {
    var key, value;
    var newCopy = {};
    var keys = variable_struct_get_names(struct);
    for (var i = array_length(keys)-1; i >= 0; --i) {
            key = keys[i];
            value = struct[$ key];
            variable_struct_get(struct, key);
            variable_struct_set(newCopy, key, value)
    }
    Shot_Burst_Stats = new nestedstruct();    

    static nestedstruct = function() constructor {
        // All variables from "parent"
        //var copy = variable_struct_get_names(other);
        // Specific set of variables from "parent"
        var j = 0;
		var copy = variable_struct_get_names(other);
        repeat array_length(copy) {
            self[$ copy[j]] = other[$ copy[j]];
            ++j;
        }
    }
}