function scr_Boss_Damage_Display(shotweaktotal = 0) {
	xx = other.x - 3 + random(6);
	yy = other.y - 23 + random(6);

	primaryElement = 0;
	if shotsharpandsolid >= 1 {
	    primaryElement = 1;
	}
	if shotexplosive >= 1 {
	    primaryElement = 2;
	}
	if shotmagical >= 1 {
	    primaryElement = 3;
	}
	if shotenergy >= 1 {
	    primaryElement = 4;
	}

	textSize = 1;
	if weakStrong = -1 {
		textSize = 0;
	} else if weakStrong = 1 {
		textSize = 2;	
	}
	if crit >= 100 {
	    textSize = 2;
	}
	
	scr_Damage_Indicator(primaryElement, shotDamage, textSize, shotweaktotal);

}
