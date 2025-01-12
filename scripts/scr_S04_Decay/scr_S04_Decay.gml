// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Damage Calculation Script

function scr_S04_Decay(damage){
	var i = global.currentheart;
	with (Soul_Hearts_Control) {
		if heart[i,2] = 51 {
			heart[i,5] += damage * 0.25;
			if heart[i,5] > heart[i,4] - 1 {
				heart[i,5] = heart[i,4] - 1;
			}
		}
	}
}