function scr_Shot_Lobbing() {
	shotbounceY += shotbouncedirection * 0.25 * shotlobbing;
	y -= shotbouncedirection * 0.25 * shotlobbing;

	if abs(shotbounceY) < ((25)  * 0.45) {
	    shotbounceY += shotbouncedirection * 0.25 * shotlobbing;
	    y -= shotbouncedirection * 0.25 * shotlobbing;
	}

	if abs(shotbounceY) < ((25) * 0.75) {
	    shotbounceY += shotbouncedirection * 0.25 * shotlobbing;
	    y -= shotbouncedirection * 0.25 * shotlobbing;
	}

	if abs(shotbounceY) >= ((25) - 2) || shotbounceY <= 0 {
	    shotbouncedirection = shotbouncedirection * -1;
	}



}
