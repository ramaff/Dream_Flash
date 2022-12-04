// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Converge(converger, target, cspeed){

	if converger >= target + cspeed {
		converger -= cspeed;
	} else if converger <= target - cspeed {
		converger += cspeed;
	} else {
		converger = target;	
	}
	return converger

}