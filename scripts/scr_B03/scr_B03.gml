// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// In soul damage calc? 1/4 of damage taken is permanently degraded from heart

function scr_B03(damage){
	var i = global.currentheart;
	with (Soul_Hearts_Control) {
		if heart[i,2] = 103 {
			heart[i,5] += damage * 0.25;
			if heart[i,5] > heart[i,4] - 1 {
				heart[i,5] = heart[i,4] - 1;
			}
		}
	}
}