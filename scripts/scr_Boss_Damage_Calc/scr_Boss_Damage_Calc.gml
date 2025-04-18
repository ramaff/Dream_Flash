function scr_Boss_Damage_Calc() {
	bossweak = 0;
	
	var speeddmg = shot_stats.Shot_Speed_Power_Add * speed;
	var exist = (shot_stats.Shot_Life_Span - alarm[0]);
	if exist < 30 and global.D[11] > 0 {
		speeddmg += 1 * ceil((30 - exist) / 7.5 * global.D[11]);
	}

	for(i = 0; i <= 49; i++) { 
	    bossweak += other.bossweaken[i];
	}
    
	if other.bossReaction >= 1 {
	    other.bossReaction++;
	}

	shotDamageMult = shot_stats.Shot_Power / shot_stats.Shot_Power_Level;
	crit = shot_stats.Shot_Crit_Chance + irandom(99);

	if crit >= 100 {
	    shotDamageMult = shotDamageMult * shot_stats.Shot_Crit_Multiple;
	}
	shotDamageBase = 0;
	shotDamageBase += shot_stats.Shot_Power_Level;
	
	var shotweaktotal = 0;

	if shot_stats.Shot_Armour_Pierce > other.bossdefense {
	    shotDamage = shotDamageMult * (shotDamageBase + bossweak + speeddmg);
		shotweaktotal = shotDamageMult * bossweak;
	} else {
	    shotDamage = shotDamageMult * ((shotDamageBase + bossweak + speeddmg) - (other.bossdefense - shot_stats.Shot_Armour_Pierce));
		shotweaktotal = shotDamageMult * bossweak;
	}
	//scr_A07_Boss_Damage();
	if shotDamage < 0 {
		shotDamage = 0;
	}
	
	var downward_boost = global.downwardSpiralBoost / 2
	
	shotDamage += shotDamage * downward_boost;
	shotweaktotal += shotweaktotal * downward_boost;

	var _xx = x;
	var _yy = y;
	if shot_stats.Shot_Melee {
		_xx = other.x;
		_yy = other.y;
	}

	scr_setup_dmg_indicator(_xx, _yy, shotDamage, c_white, shotweaktotal);

	//Adding Poison
	if shot_stats.Shot_Poison != 0 {
		scr_Apply_Boss_Poison(other.id, shot_stats.Shot_Poison, shot_stats.Shot_Poison_Time, shot_stats.Shot_Poison_Ticks);
	}

	if shotDamage > 0 {
	    other.bosshealth -= shotDamage
		
		scr_B09(shotDamage);
		
		scr_State_Gain(shotDamage);
	
		//scr_Sound_Effect(sd_Small_Damage_To_Boss);
    
	    //Adding Bleed
	    if shot_stats.Shot_Bleed != 0 {
	        for(i = 0; i <= 49; i++) {
	            if other.bossbleed[i] = 0 {
	                other.bossbleed[i] = shot_stats.Shot_Bleed;
	                other.bossbleedtime[i] = shot_stats.Shot_Bleed_Time;
	                other.bossbleedmaxtime[i] = shot_stats.Shot_Bleed_Time;
	                other.bossbleedticks[i] = shot_stats.Shot_Bleed_Ticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Fire
	    if shot_stats.Shot_Fire != 0 {
	        for(i = 0; i <= 49; i++) {
	            if other.bossfire[i] = 0 {
	                other.bossfire[i] = shot_stats.Shot_Fire;
	                other.bossfiretime[i] = shot_stats.Shot_Fire_Time;
	                other.bossfiremaxtime[i] = shot_stats.Shot_Fire_Time;
	                other.bossfireticks[i] = shot_stats.Shot_Fire_Ticks;
	                break;
	            }
	        }
	    }
    
	    //Adding Freeze
	    if shot_stats.Shot_Freeze_Type >= other.bossfreezetype and shot_stats.Shot_Freeze_Type > 0 and scr_Chance(1 / max(shot_stats.Shot_Freeze_Type, 0.01)) {
	        var wasFrozen = 1;
	        if other.bossfreezetype = 0 {
	            wasFrozen = 0;
	        }
	        other.bossfreezetype = 0.5;
	        other.bossfreeze = shot_stats.Shot_Freeze;
	        other.bossfreezetime = shot_stats.Shot_Freeze_Time;
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
