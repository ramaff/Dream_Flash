// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Item Step

function scr_XC02(){
	if global.XC[2] > 0 {
		var _void_time = (current_time * 0.001) mod 9
		
		if _void_time < 4 {
			var _suck_multiplier = _void_time / 3
			if _void_time > 3 {
				_suck_multiplier = 4 - _void_time
			}
			scr_Enemy_Bullet_Orbit_Suck(_suck_multiplier * (1 + (1 * global.XC[2])));
		}
	}
}