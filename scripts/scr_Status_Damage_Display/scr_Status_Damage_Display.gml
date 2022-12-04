function scr_Status_Damage_Display() {
	damageInd = argument[0];
	primaryElement = argument[1];

	xx = x - 3 + random(6);
	yy = y - 23 + random(6);

	textSize = 1;

	if global.gameDamageDisplay != 0 {
		scr_Damage_Indicator(primaryElement, damageInd, textSize);
	}



}
