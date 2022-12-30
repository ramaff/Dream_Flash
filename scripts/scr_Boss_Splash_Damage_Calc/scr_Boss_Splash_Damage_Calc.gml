function scr_Boss_Splash_Damage_Calc() {
	bossweak = 0;

	for(i = 0; i <= 49; i++) { 
	    bossweak += bossweaken[i];
	}

	if bossReaction >= 1 {
	    bossReaction++;
	}

	shotDamageMult = other.shotimpactpower / other.shotImpactPowerLevel;
	crit = other.shotcritchance + irandom(99);
	if crit >= 100 {
	    shotDamageMult = shotDamageMult * other.shotcritmultiple;
	}

	shotDamageBase = 0;
	shotDamageBase += other.shotPowerLevel;
	/*
	shotDamageBase += (shotimaginary * shotPowerLevel) * (1 - other.bossImaginaryResistance);
	shotDamageBase += (shotsharpandsolid * shotPowerLevel) * (1 - other.bossSharpSolidResistance);
	shotDamageBase += (shotmagical * shotPowerLevel) * (1 - other.bossMagicResistance);
	shotDamageBase += (shotexplosive * shotPowerLevel) * (1 - other.bossExplosiveResistance);
	shotDamageBase += (shotenergy * shotPowerLevel) * (1 - other.bossEnergyResistance);
	*/
	if other.shotarmourpierce > bossdefense {
	    shotDamage = shotDamageMult * (shotDamageBase + bossweak);
	} else {
	    shotDamage = shotDamageMult * ((shotDamageBase + bossweak) - (bossdefense - other.shotarmourpierce));
	}
	if shotDamage < 0 {
	shotDamage = 0;
	}

	shotimaginary = other.shotimaginary;
	shotsharpandsolid = other.shotsharpandsolid;
	shotmagical = other.shotmagical;
	shotexplosive = other.shotexplosive;
	shotenergy = other.shotenergy;

	weakStrong = 0;

	scr_Boss_Damage_Display();

	if shotDamage > 0 {
	    bosshealth -= shotDamage
		
		scr_State_Gain(shotDamage);
	}



}
