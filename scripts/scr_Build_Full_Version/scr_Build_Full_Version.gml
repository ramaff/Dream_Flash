// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Build_Full_Version(){
	var _full_version_string = GAME_VERSION
	
	if string_digits(GAME_MINOR_VERSION) > 0 {
		_full_version_string += "." + GAME_MINOR_VERSION
	}
	
	if string_digits(GAME_VERSION_BETA) > 0 {
		_full_version_string += " (Beta " + GAME_VERSION_BETA + ")"	
	}

	return _full_version_string
}