enum JUMP_SIDE {
    NONE,
    UP,
    DOWN
}

function scr_Jump_Movement(jumpSpeed) {
	if bossPatternCount <= ((bossPatternCountMax / 2) + 0.5) {
		jumpDirection = JUMP_SIDE.DOWN;	
	} else {
		jumpDirection = JUMP_SIDE.UP;	
	}

	var aspeed = jumpSpeed * 2 * ((bossPatternCount - ((bossPatternCountMax / 2) + 0.5)) / ((bossPatternCountMax / 2) + 0.5));
	var bspeed = jumpSpeed * 2 * ((((bossPatternCountMax / 2) + 0.5) - bossPatternCount) / ((bossPatternCountMax / 2) + 0.5));

	if jumpDirection = JUMP_SIDE.UP {
		jumpHeight += aspeed;
		y -= aspeed;
	} else if jumpDirection = JUMP_SIDE.DOWN {
		jumpHeight -= bspeed;
		y += bspeed;
	}
}
