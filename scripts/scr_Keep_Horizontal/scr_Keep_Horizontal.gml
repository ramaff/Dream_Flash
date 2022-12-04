// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Keep_Horizontal(dir, tolerance){
	if dir > 90 and dir < 270 {
		dir = clamp(dir, 180 - tolerance, 180 + tolerance);
	} else {
		if dir > 180 and dir < 330 {
			dir = 360 - tolerance;
		} else if dir < 180 and dir > 30 {
			dir = tolerance;
		}
	}
	return dir;
}