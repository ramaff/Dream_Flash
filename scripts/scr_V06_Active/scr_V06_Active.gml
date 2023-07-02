// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_V06_Active(){
	
	var active = false;
	if global.V[6] >= 1 {

		global.V06Overwhelm += global.V[6];
	
		if global.currentweapon = 14 {
			if global.V06Overwhelm > ((8 - global.V[6]) * 15) {
				active = true	
			}
			if global.V06Overwhelm > 119 {
				global.V06Overwhelm = 0;	
			}
		} else {
			if global.V06Overwhelm > (8 - global.V[6]) {
				active = true	
			}
			if global.V06Overwhelm > 7 {
				global.V06Overwhelm = 0;	
			}
		}
		
	}
	
	return active
	
	
}