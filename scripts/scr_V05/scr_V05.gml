// soul got hit

function scr_V05() {
	
	if global.V[5] > 0 {
		
		var _charge = false
		if (senergy >= ((20 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
	        _charge = true
	    }
		if _charge {
			scr_Soul_Teleport(true);
			return true;
		}
		return false;
		
	}

}
