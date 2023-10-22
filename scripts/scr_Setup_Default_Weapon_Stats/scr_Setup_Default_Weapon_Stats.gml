// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Setup_Default_Weapon_Stats(_weapon){
	
	scr_Default_Weapon_Stats()

	var _base_stats = scr_Setup_Default_Shot_Stats()
	var _weapon_stats = json_parse(json_stringify(variable_struct_get(global.weapon_stats, string(_weapon))))
	
	var _weapon_struct = scr_Struct_Merge(_base_stats, _weapon_stats, false)
	
	return _weapon_struct

}