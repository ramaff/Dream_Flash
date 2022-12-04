function scr_Jump_Movement(argument0) {
	jumpSpeed = argument0;
	
	if bossPatternCount <= ((bossPatternCountMax / 2) + 0.5) {
		jumpDirection = "Down";	
	} else {
		jumpDirection = "Up";	
	}

	var aspeed = jumpSpeed * 2 * ((bossPatternCount - ((bossPatternCountMax / 2) + 0.5)) / ((bossPatternCountMax / 2) + 0.5));
	var bspeed = jumpSpeed * 2 * ((((bossPatternCountMax / 2) + 0.5) - bossPatternCount) / ((bossPatternCountMax / 2) + 0.5));

	if jumpDirection = "Up" {
		jumpHeight += aspeed;
		y -= aspeed;
	} else if jumpDirection = "Down" {
		jumpHeight -= bspeed;
		y += bspeed;
	}


}
