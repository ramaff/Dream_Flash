function scr_Knockback_Reactions() {
	// Location: Soul Parent Boss Hit Event

	if global.B[6] > 0 {
	    if sdefensebuffamount < 10 * global.B[6] {
	        sdefensebuffamount = 10 * global.B[6];
	        sdefensebuffduration = 90;
	    }
	}



}
