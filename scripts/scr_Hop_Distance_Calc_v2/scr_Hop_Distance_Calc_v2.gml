function scr_Hop_Distance_Calc_v2(basespeed = 0, xx = x, yy = y) {

	var sCalc = scr_Soul_Point(xx, yy)
	var iRange = 0;
		
	if sCalc < (basespeed * patternCountMax) {
		iRange = 1;	
	} else {
		iRange = 0;	
	}
		
	if iRange = 0 {
		maxDashSpeed = basespeed;
	} else {
		//bossPatternCountMax = 10 + (bossPatternCountMax * 0.25) + (sCalc / basespeed);
		//bossPatternCount = bossPatternCountMax;
		maxDashSpeed = basespeed;
		maxDashSpeed = 1 + (sCalc / patternCountMax);
	}


}
