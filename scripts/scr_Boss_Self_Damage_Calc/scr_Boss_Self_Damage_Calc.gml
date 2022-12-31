function scr_Boss_Self_Damage_Calc() {
	bossweak = 0;

	for(i = 0; i <= 49; i++) { 
	    bossweak += bossweaken[i];
	}
    
	if bossReaction >= 1 {
	    bossReaction++;
	}

	shotDamageMult = other.shotpower / other.shotPowerLevel;
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

	weakStrong = 0;

	scr_Boss_Self_Damage_Display();

	if shotDamage > 0 {
	    bosshealth -= shotDamage
		
		scr_State_Gain(shotDamage);
    
    
	    //Adding Poison
	    if other.shotpoison != 0 {
	        for(i = 0; i <= 99; i++) {
	            if bosspoison[i] = 0 {
	                bosspoison[i] = other.shotpoison;
	                bosspoisontime[i] = other.shotpoisontime;
	                bosspoisonmaxtime[i] = other.shotpoisontime;
	                bosspoisonticks[i] = other.shotpoisonticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Bleed
	    if other.shotbleed != 0 {
	        for(i = 0; i <= 99; i++) {
	            if other.bossbleed[i] = 0 {
	                bossbleed[i] = other.shotbleed;
	                bossbleedtime[i] = other.shotbleedtime;
	                bossbleedmaxtime[i] = other.shotbleedtime;
	                bossbleedticks[i] = other.shotbleedticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Fire
	    if other.shotfire != 0 {
	        for(i = 0; i <= 99; i++) {
	            if bossfire[i] = 0 {
	                bossfire[i] = other.shotfire;
	                bossfiretime[i] = other.shotfiretime;
	                bossfiremaxtime[i] = other.shotfiretime;
	                bossfireticks[i] = other.shotfireticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Freeze
	    if other.shotfreezetype >= bossfreezetype {
	        var wasFrozen = 1;
	        if bossfreezetype = 0 {
	            wasFrozen = 0;
	        }
	        bossfreezetype = other.shotfreezetype;
	        bossfreeze = other.shotfreeze;
	        bossfreezetime = other.shotfreezetime;
	        if wasFrozen = 0 {
	            bossattackspeed = bossattackspeed * (1 - bossfreezetype);
	            bossmovespeed = bossmovespeed * (1 - bossfreezetype);
	            speed = speed * (1 - bossfreezetype);
	            path_speed = path_speed * (1 - bossfreezetype);
	        }
	    }
	}



}
