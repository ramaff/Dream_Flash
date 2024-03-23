function scr_Boss_Damage_Display(shotweaktotal = 0) {
	xx = other.x - 3 + random(6);
	yy = other.y - 23 + random(6);

	primaryElement = 0;

	textSize = 1;
	if crit >= 100 {
	    textSize = 2;
	}
	
	scr_Damage_Indicator(primaryElement, shotDamage, textSize, shotweaktotal);

}
