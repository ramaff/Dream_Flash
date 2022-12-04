function scr_Boss_Two_Face_Direction_Mirror() {
	if hspeed > 0 {
	    image_xscale = bossSize;
	} else if hspeed < 0 {
	    image_xscale = -bossSize;
	}



}
