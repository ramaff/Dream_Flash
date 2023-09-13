// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location: soul damage calculations

function scr_XC05(truedam){

	if global.XC[5] >= 1 {
		if truedam >= 1 {
			with instance_create(x,y,obj_Lasting_Pain) {
				damage = truedam * ((global.XC[5]) / (1 + global.XC[5]));
				damage = max(1, damage);
				scr_Boss_Size_Setup(0.15 + (sqrt(damage) / 6));
			}
		}
	}

}