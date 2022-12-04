function scr_Boss_Self_Damage_Display() {
	xx = x - 3 + random(6);
	yy = y - 23 + random(6);

	primaryElement = 0;
	if other.shotsharpandsolid >= 1 {
	    primaryElement = 1;
	}
	if other.shotexplosive >= 1 {
	    primaryElement = 2;
	}
	if other.shotmagical >= 1 {
	    primaryElement = 3;
	}
	if other.shotenergy >= 1 {
	    primaryElement = 4;
	}

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
