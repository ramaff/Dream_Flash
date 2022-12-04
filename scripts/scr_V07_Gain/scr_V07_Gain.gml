function scr_V07_Gain(amt) {
	
	// Use weapon list
	
	if global.V[7] > 0 and instance_exists(obj_Boss_Parent) {
		global.V7mindblow += amt * global.V[7];
		
		global.V7mindblow = min(global.V7mindblow, 100);
	}

}
