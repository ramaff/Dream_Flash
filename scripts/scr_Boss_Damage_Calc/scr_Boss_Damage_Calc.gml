function scr_Boss_Damage_Calc() {
	bossweak = 0;
	
	var speeddmg = shotspeedpoweradd * speed;
	var exist = (shotlifespan - shottimer);
	if exist < 30 and global.D[11] > 0 {
		speeddmg += 1 * ceil((30 - exist) / 7.5 * global.D[11]);
	}

	for(i = 0; i <= 49; i++) { 
	    bossweak += other.bossweaken[i];
	}
    
	if other.bossReaction >= 1 {
	    other.bossReaction++;
	}

	shotDamageMult = shotpower / shotPowerLevel;
	crit = shotcritchance + irandom(99);

	if crit >= 100 {
	    shotDamageMult = shotDamageMult * shotcritmultiple;
	}
	shotDamageBase = 0;
	shotDamageBase += shotPowerLevel;
	
	var shotweaktotal = 0;

	if shotarmourpierce > other.bossdefense {
	    shotDamage = shotDamageMult * (shotDamageBase + bossweak + speeddmg);
		shotweaktotal = shotDamageMult * bossweak;
	} else {
	    shotDamage = shotDamageMult * ((shotDamageBase + bossweak + speeddmg) - (other.bossdefense - shotarmourpierce));
		shotweaktotal = shotDamageMult * bossweak;
	}
	scr_A07_Boss_Damage();
	if shotDamage < 0 {
		shotDamage = 0;
	}

	weakStrong = 0;
	if shotDamageBase < ((shotimaginary + shotsharpandsolid + shotmagical + shotexplosive + shotenergy) * shotPowerLevel) {
		weakStrong = -1;	
	} else if shotDamageBase > ((shotimaginary + shotsharpandsolid + shotmagical + shotexplosive + shotenergy) * shotPowerLevel) {
		weakStrong = 1;
	}
	
	var downward_boost = min(global.downwardSpiralBoost / 3, 0.2 * global.XC[4])
	
	shotDamage += shotDamage * downward_boost;
	shotweaktotal += shotweaktotal * downward_boost;

	scr_Boss_Damage_Display(shotweaktotal);

	//Adding Poison
	if shotpoison != 0 {
		scr_Apply_Boss_Poison(other.id, shotpoison, shotpoisontime, shotpoisonticks);
	}

	if shotDamage > 0 {
	    other.bosshealth -= shotDamage
		
		scr_B09(shotDamage);
		
		scr_State_Gain(shotDamage);
	
		scr_Sound_Effect(sd_Small_Damage_To_Boss);
    
	    //Adding Bleed
	    if shotbleed != 0 {
	        for(i = 0; i <= 49; i++) {
	            if other.bossbleed[i] = 0 {
	                other.bossbleed[i] = shotbleed;
	                other.bossbleedtime[i] = shotbleedtime;
	                other.bossbleedmaxtime[i] = shotbleedtime;
	                other.bossbleedticks[i] = shotbleedticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Fire
	    if shotfire != 0 {
	        for(i = 0; i <= 49; i++) {
	            if other.bossfire[i] = 0 {
	                other.bossfire[i] = shotfire;
	                other.bossfiretime[i] = shotfiretime;
	                other.bossfiremaxtime[i] = shotfiretime;
	                other.bossfireticks[i] = shotfireticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Freeze
	    if shotfreezetype >= other.bossfreezetype and shotfreezetype > 0 and scr_Chance(1 / max(shotfreezetype, 0.01)) {
	        var wasFrozen = 1;
	        if other.bossfreezetype = 0 {
	            wasFrozen = 0;
	        }
	        other.bossfreezetype = 0.5;
	        other.bossfreeze = shotfreeze;
	        other.bossfreezetime = shotfreezetime;
	        if wasFrozen = 0 {
	            other.bossattackspeed = other.bossattackspeed * 0.5;//(1 - other.bossfreezetype);
	            other.bossmovespeed = other.bossmovespeed * 0.5; //(1 - other.bossfreezetype);
	            other.speed = other.speed * 0.5; //(1 - other.bossfreezetype);
	            other.path_speed = other.path_speed * 0.5; //(1 - other.bossfreezetype);
				other.image_speed = other.image_speed * 0.5; //(1 - other.bossfreezetype);
	        }
	    }
	}



}
