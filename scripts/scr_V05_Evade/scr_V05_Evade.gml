// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_V05_Evade(_og_x = x, _og_y = y){

	var _new_xx = _og_x;
	var _new_yy = _og_y;
	var _evasion_attempts = 1 + (2 * global.V[5]);
	
	Print_DF("og x: " + string(_og_x) + ", og y: " + string(_og_y))
	
	while(_evasion_attempts > 0) {
		_evasion_attempts--;
		
		_new_xx = _og_x - 200 + random(400);
		_new_yy = _og_y - 200 + random(400);
		
		with(obj_Soul_Hurt) {
			if point_distance(_new_xx, _new_yy, x, y) < 30 {
				continue
			}
		}
		break
	}
	
	Print_DF("new x: " + string(_new_xx) + ", new y: " + string(_new_yy))
	
	return [_new_xx, _new_yy]

}