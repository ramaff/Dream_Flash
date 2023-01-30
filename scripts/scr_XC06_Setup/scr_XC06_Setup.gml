// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location: extra shot stats

function scr_XC06_Setup(){

	if global.XC[6] >= 1 {
		//followtarget = other.id;
		followtarget = noone;
		shotlifespan = shotlifespan * 2;
		alarm[0] = shotlifespan;
		shottimer = shotlifespan;
	}

}