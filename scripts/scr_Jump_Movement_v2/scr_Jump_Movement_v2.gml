function scr_Jump_Movement_v2(jumpSpeed = 2) {
	
	if patternCount <= ((patternCountMax / 2) + 0.5) {
		jumpDirection = "Down";	
	} else {
		jumpDirection = "Up";	
	}

	var aspeed = jumpSpeed * 2 * ((patternCount - ((patternCountMax / 2) + 0.5)) / ((patternCountMax / 2) + 0.5));
	var bspeed = jumpSpeed * 2 * ((((patternCountMax / 2) + 0.5) - patternCount) / ((patternCountMax / 2) + 0.5));

	if jumpDirection = "Up" {
		bossHeight += aspeed;
		y -= aspeed;
	} else if jumpDirection = "Down" {
		bossHeight -= bspeed;
		y += bspeed;
	}


}
