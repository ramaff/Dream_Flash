function scr_Leap_Distance_Calc(basespeed, slowupdown) {

	var sCalc = point_distance(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	var iRange = 0;
		
	if sCalc < (basespeed * bossPatternCountMax) {
		iRange = 1;	
	} else {
		iRange = 0;	
	}
		
	//if iRange = 0 {
		basespeed = 0.1 + (sCalc / (bossPatternCountMax - slowupdown));
		bossMaxDashSpeed = basespeed;
	//} else {
	//	bossMaxDashSpeed = basespeed;
		//bossMaxDashSpeed = 1 + (sCalc / 60);
	//}


}
