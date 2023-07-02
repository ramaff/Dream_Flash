// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Soul Item Step After
// Set to 0 in scr_room_change_variables

function scr_C01(){

	if global.C[1] > 0 {
		energyregenfactor += energyregenfactor * (global.C01Boost / 1000);
		global.C01Boost = min(global.C01Boost + 0.8, 400 * global.C[1])
	}

}