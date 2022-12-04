// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Extra Shot Stats


function scr_U08(){
	if global.U[8] > 0 {
		var amt = global.U[8] / 4;
		while amt > 1 {
			shotrecycle += 1;	
		}
		if amt > 0 {
			if scr_Chance(1 / amt) {
				shotrecycle += 1;	
			}
		}
	}
}