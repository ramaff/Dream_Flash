function scr_Shot_Two_Face_Direction() {
	if hspeed > 0 {
	    image_xscale = -shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
	} else if hspeed < 0 {
	    image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
	}



}
