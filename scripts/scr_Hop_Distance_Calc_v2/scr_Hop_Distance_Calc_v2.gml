function scr_Hop_Distance_Calc_v2(basespeed = 1) {

	var sCalc = point_distance(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	var iRange = 0;
		
	if sCalc < (basespeed * pattern_count_max) {
		iRange = 1;	
	} else {
		iRange = 0;	
	}
		
	if iRange = 0 {
		max_dash_speed = basespeed;
	} else {
		//pattern_count_max = 10 + (pattern_count_max * 0.25) + (sCalc / basespeed);
		//pattern_count = pattern_count_max;
		max_dash_speed = basespeed;
		max_dash_speed = 1 + (sCalc / pattern_count_max);
	}


}
