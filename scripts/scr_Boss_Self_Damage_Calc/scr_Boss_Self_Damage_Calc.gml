function scr_Boss_Self_Damage_Calc() {
	bossweak = 0;

	for(i = 0; i <= 49; i++) { 
	    bossweak += bossweaken[i];
	}
    
	if bossReaction >= 1 {
	    bossReaction++;
	}

	shotDamageMult = other.shot_stats.Shot_Power / other.shotPowerLevel;
	crit = other.shot_stats.Shot_Crit_Chance + irandom(99);

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


	scr_Boss_Self_Damage_Display();

	if shotDamage > 0 {
	    bosshealth -= shotDamage
		
		scr_State_Gain(shotDamage);
    
    
	    //Adding Poison
	    if other.shot_stats.Shot_Poison != 0 {
	        for(i = 0; i <= 99; i++) {
	            if bosspoison[i] = 0 {
	                bosspoison[i] = other.shot_stats.Shot_Poison;
	                bosspoisontime[i] = other.shot_stats.Shot_Poison_Time;
	                bosspoisonmaxtime[i] = other.shot_stats.Shot_Poison_Time;
	                bosspoisonticks[i] = other.shot_stats.Shot_Poison_Ticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Bleed
	    if other.shot_stats.Shot_Bleed != 0 {
	        for(i = 0; i <= 99; i++) {
	            if other.bossbleed[i] = 0 {
	                bossbleed[i] = other.shot_stats.Shot_Bleed;
	                bossbleedtime[i] = other.shot_stats.Shot_Bleed_Time;
	                bossbleedmaxtime[i] = other.shot_stats.Shot_Bleed_Time;
	                bossbleedticks[i] = other.shot_stats.Shot_Bleed_Ticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Fire
	    if other.shot_stats.Shot_Fire != 0 {
	        for(i = 0; i <= 99; i++) {
	            if bossfire[i] = 0 {
	                bossfire[i] = other.shot_stats.Shot_Fire;
	                bossfiretime[i] = other.shot_stats.Shot_Fire_Time;
	                bossfiremaxtime[i] = other.shot_stats.Shot_Fire_Time;
	                bossfireticks[i] = other.shot_stats.Shot_Fire_Ticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Freeze
	    if other.shot_stats.Shot_Freeze_Type >= bossfreezetype {
	        var wasFrozen = 1;
	        if bossfreezetype = 0 {
	            wasFrozen = 0;
	        }
	        bossfreezetype = other.shot_stats.Shot_Freeze_Type;
	        bossfreeze = other.shot_stats.Shot_Freeze;
	        bossfreezetime = other.shot_stats.Shot_Freeze_Time;
	        if wasFrozen = 0 {
	            bossattackspeed = bossattackspeed * (1 - bossfreezetype);
	            bossmovespeed = bossmovespeed * (1 - bossfreezetype);
	            speed = speed * (1 - bossfreezetype);
	            path_speed = path_speed * (1 - bossfreezetype);
	        }
	    }
	}



}
