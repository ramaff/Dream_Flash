function scr_Boss_Damage_Calc() {
	var bossweak = 0;
	
	var speeddmg = shot_stats.Shot_Speed_Power_Add * speed;
	var exist = (shot_stats.Shot_Life_Span - alarm[0]);
	if exist < 30 and global.D[11] > 0 {
		speeddmg += 1 * ceil((30 - exist) / 7.5 * global.D[11]);
	}

	var _i = 0;
	for(_i = 0; _i <= 49; _i++) { 
	    bossweak += other.bossweaken[_i];
	}
    
	if other.bossReaction >= 1 {
	    other.bossReaction++;
	}
	
	var _shot_dam = shot_stats.Shot_Power;

	var crit = shot_stats.Shot_Crit_Chance + irandom(99);
	if crit >= 100 {
	    _shot_dam = _shot_dam * shot_stats.Shot_Crit_Multiple;
	}
	
	_shot_dam = (_shot_dam + bossweak + speeddmg) - max(0, (other.bossdefense - shot_stats.Shot_Armour_Pierce));

	if _shot_dam < 0 || is_nan(_shot_dam) {
		_shot_dam = 0;
	}
	
	var downward_boost = global.downwardSpiralBoost / 1.333
	
	_shot_dam += _shot_dam * downward_boost;
	bossweak += bossweak * downward_boost;

	var _xx = x;
	var _yy = y;
	if shot_stats.Shot_Melee {
		_xx = other.x;
		_yy = other.y;
	}

	scr_setup_dmg_indicator(_xx, _yy, _shot_dam - bossweak, c_white, bossweak);

	//Adding Poison
	if shot_stats.Shot_Poison != 0 {
		scr_Apply_Boss_Poison(other.id, shot_stats.Shot_Poison, shot_stats.Shot_Poison_Time, shot_stats.Shot_Poison_Ticks);
	}

	if _shot_dam > 0 {
	    other.bosshealth -= _shot_dam
		
		scr_B09(_shot_dam);
		
		scr_State_Gain(_shot_dam);
	
		//scr_Sound_Effect(sd_Small_Damage_To_Boss);
    
	    //Adding Bleed
		var i = 0;
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

	return _shot_dam

}
