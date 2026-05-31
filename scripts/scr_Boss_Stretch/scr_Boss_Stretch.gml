function scr_Boss_Stretch(ori, amt) {

	if ori = "Horizontal" {
		bossSizeX += amt * bossSize;
		bossSizeY -= 1 - (1 / (1 + (amt * bossSize)));
	}
	if ori = "Vertical" {
		bossSizeX -= amt * bossSize;
		bossSizeY += 1 - (1 / (1 + (amt * bossSize)));
	}


}
