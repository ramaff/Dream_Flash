// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Converge to a target angle by a set converging speed
function scr_Angle_Converge(converger, target, cspeed){
	
	var adif = angle_difference(converger, target);
	if abs(adif) < cspeed {
		converger = target	
	} else if adif < 0 {
	    converger += cspeed;
	} else if adif > 0 {
	    converger -= cspeed;
	}	
	return converger

}