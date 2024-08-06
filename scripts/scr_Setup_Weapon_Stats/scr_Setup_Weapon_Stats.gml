// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Setup_Weapon_Stats(_current_weapon_stats = current_weapon_stats) {
	
	var _base_stats = scr_Setup_Default_Shot_Stats()
	
	_current_weapon_stats = scr_Struct_Merge(_base_stats, _current_weapon_stats, false)
	
	return _current_weapon_stats
	
}