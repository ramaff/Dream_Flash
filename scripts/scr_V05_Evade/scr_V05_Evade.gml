// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_V05_Evade(_og_x = x, _og_y = y){

	var _new_xx = _og_x;
	var _new_yy = _og_y;
	var _evasion_attempts = 1 + (1 * global.V[5]);
	
	while(_evasion_attempts > 0) {
		_evasion_attempts--;
		
		var _evade_dist = 100 + (100 * global.V[5])
		
		_new_xx = _og_x - _evade_dist + random(_evade_dist * 2);
		_new_yy = _og_y - _evade_dist + random(_evade_dist * 2);
		
		with(obj_Soul_Hurt) {
			if point_distance(_new_xx, _new_yy, x, y) < 30 {
				continue
			}
		}
		break
	}
	
	return [_new_xx, _new_yy]

}