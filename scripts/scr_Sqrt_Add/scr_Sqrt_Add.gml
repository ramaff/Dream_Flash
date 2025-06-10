// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Increase a value with diminishing returns
function scr_Sqrt_Add(_initial_var, _add_amount){

	return sqrt(max(0, (_initial_var * _initial_var) + _add_amount));

}