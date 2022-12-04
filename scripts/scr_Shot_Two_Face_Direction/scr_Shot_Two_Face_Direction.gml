function scr_Shot_Two_Face_Direction() {
	if hspeed > 0 {
	    image_xscale = -shotsize;
		image_yscale = shotsize;
	} else if hspeed < 0 {
	    image_xscale = shotsize;
		image_yscale = shotsize;
	}



}
