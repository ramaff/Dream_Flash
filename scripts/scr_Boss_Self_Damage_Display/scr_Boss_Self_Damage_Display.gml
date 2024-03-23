function scr_Boss_Self_Damage_Display() {
	xx = x - 3 + random(6);
	yy = y - 23 + random(6);

	primaryElement = 0;

	textSize = 1;
	if crit >= 100 {
	    textSize = 2;
	}
	
	if shotDamage >= 50 {
		textSize += 1;
	}
	if shotDamage >= 300 {
		textSize += 1;
	}

	scr_Damage_Indicator(primaryElement, shotDamage, textSize);



}
