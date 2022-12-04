function scr_Invincibility_Frames() {

	if soulinvincibility > 0 {
		if soulFadeDirect = "Down" {
			image_alpha -= 0.2;
		}
	    if soulFadeDirect = "Up" {
	        image_alpha += 0.2;
	    }
		if image_alpha <= 0.25 {
			soulFadeDirect = "Up"
		}
		if image_alpha >= 1 {
			soulFadeDirect = "Down"
		}
	} else {
		image_alpha += 0.25;
		if image_alpha > 1 {
			image_alpha = 1;	
		}
	}


	if soulfade != 0 {
	image_alpha = 1 - (soulfade * 0.1);
	}

	//image_alpha = 0;

	soulinvincibility--;
	soulfade--;

	if soulinvincibility < 0 {
	    soulinvincibility = 0;
	}
	if soulfade < 0 {
	    soulfade = 0;
	}



}
