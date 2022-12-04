function scr_Boss_Stretch(argument0, argument1) {
	var ori = argument0;
	var amt = argument1;

	if ori = "Horizontal" {
		bossSizeX += amt * bossSize;
		bossSizeY -= 1 - (1 / (1 + (amt * bossSize)));
	}
	if ori = "Vertical" {
		bossSizeX -= amt * bossSize;
		bossSizeY += 1 - (1 / (1 + (amt * bossSize)));
	}


}
