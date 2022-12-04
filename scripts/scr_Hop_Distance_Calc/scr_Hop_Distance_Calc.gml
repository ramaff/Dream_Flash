function scr_Hop_Distance_Calc(argument0) {
	var basespeed = argument0;

	var sCalc = point_distance(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	var iRange = 0;
		
	if sCalc < (basespeed * bossPatternCountMax) {
		iRange = 1;	
	} else {
		iRange = 0;	
	}
		
	if iRange = 0 {
		bossMaxDashSpeed = basespeed;
	} else {
		//bossPatternCountMax = 10 + (bossPatternCountMax * 0.25) + (sCalc / basespeed);
		//bossPatternCount = bossPatternCountMax;
		bossMaxDashSpeed = basespeed;
		bossMaxDashSpeed = 1 + (sCalc / bossPatternCountMax);
	}


}
