// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_V06_Active(){
	
	var _procs = 0;
	if global.V[6] >= 1 {
		
		_procs += floor(global.V[6] / 8);
		var _proc_mod = global.V[6] mod 8;

		global.V06Overwhelm += _proc_mod
	
		if global.currentweapon = 14 {
			if global.V06Overwhelm > ((8 - _proc_mod) * 15) {
				_procs += 1	
			}
			if global.V06Overwhelm > 119 {
				global.V06Overwhelm = 0;	
			}
		} else {
			if global.V06Overwhelm > (8 - _proc_mod) {
				_procs += 1	
			}
			if global.V06Overwhelm > 7 {
				global.V06Overwhelm = 0;	
			}
		}
		
	}
	
	return _procs
	
	
}