// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Extra Shot Stats


function scr_Q02(){
	if global.Q[2] > 0 {
		var amt = global.Q[2] / 4;
		while amt > 1 {
			shot_stats.Shot_Recycle += 1;	
		}
		if amt > 0 {
			if scr_Chance(1 / amt) {
				shot_stats.Shot_Recycle += 1;	
			}
		}
	}
}