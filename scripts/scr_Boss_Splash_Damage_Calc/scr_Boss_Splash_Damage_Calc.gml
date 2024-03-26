function scr_Boss_Splash_Damage_Calc() {
	bossweak = 0;

	for(i = 0; i <= 49; i++) { 
	    bossweak += bossweaken[i];
	}

	if bossReaction >= 1 {
	    bossReaction++;
	}

	shotDamageMult = other.shot_stats.Shot_Impact_Power / other.shot_stats.Shot_Impact_Power_Level;
	crit = other.shot_stats.Shot_Crit_Chance + irandom(99);
	if crit >= 100 {
	    shotDamageMult = shotDamageMult * other.shotcritmultiple;
	}

	shotDamageBase = 0;
	shotDamageBase += other.shot_stats.Shot_Power_Level;
	/*
	shotDamageBase += (shotimaginary * shot_stats.Shot_Power_Level) * (1 - other.bossImaginaryResistance);
	shotDamageBase += (shotsharpandsolid * shot_stats.Shot_Power_Level) * (1 - other.bossSharpSolidResistance);
	shotDamageBase += (shotmagical * shot_stats.Shot_Power_Level) * (1 - other.bossMagicResistance);
	shotDamageBase += (shotexplosive * shot_stats.Shot_Power_Level) * (1 - other.bossExplosiveResistance);
	shotDamageBase += (shotenergy * shot_stats.Shot_Power_Level) * (1 - other.bossEnergyResistance);
	*/
	if other.shot_stats.Shot_Armour_Pierce > bossdefense {
	    shotDamage = shotDamageMult * (shotDamageBase + bossweak);
	} else {
	    shotDamage = shotDamageMult * ((shotDamageBase + bossweak) - (bossdefense - other.shot_stats.Shot_Armour_Pierce));
	}
	if shotDamage < 0 {
	shotDamage = 0;
	}

	scr_Boss_Damage_Display();

	if shotDamage > 0 {
	    bosshealth -= shotDamage
		
		scr_State_Gain(shotDamage);
	}



}
