function scr_Hop_Distance_Calc_v2(basespeed = 1) {

	var sCalc = point_distance(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	var iRange = 0;
		
	if sCalc < (basespeed * patternCountMax) {
		iRange = 1;	
	} else {
		iRange = 0;	
	}
		
	if iRange = 0 {
		maxDashSpeed = basespeed;
	} else {
		//patternCountMax = 10 + (patternCountMax * 0.25) + (sCalc / basespeed);
		//patternCount = patternCountMax;
		maxDashSpeed = basespeed;
		maxDashSpeed = 1 + (sCalc / patternCountMax);
	}


}
