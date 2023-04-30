function scr_New_Face_Direction() {
	if minmovedir < 90  || minmovedir > 270 {
	    image_xscale = -abs(image_xscale);
	} else {
	    image_xscale = abs(image_xscale);
	}
	
	if speed != 0 {
		if hspeed > 0 {
		    image_xscale = -abs(image_xscale);
		} else {
			image_xscale = abs(image_xscale);
		}
	}


}
