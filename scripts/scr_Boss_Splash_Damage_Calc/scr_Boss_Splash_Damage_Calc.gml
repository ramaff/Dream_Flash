function scr_Boss_Splash_Damage_Calc() {
	var bossweak = 0;
	
	var i;
	for(i = 0; i <= 49; i++) { 
	    bossweak += bossweaken[i];
	}
	
	var speeddmg = other.shot_stats.Shot_Speed_Power_Add * other.speed;
	var exist = (other.shot_stats.Shot_Life_Span - other.alarm[0]);
	if exist < 30 and global.D[11] > 0 {
		speeddmg += 1 * ceil((30 - exist) / 7.5 * global.D[11]);
	}

	if bossReaction >= 1 {
	    bossReaction++;
	}

	var _shot_dam = other.shot_stats.Shot_Power;

	var crit = other.shot_stats.Shot_Crit_Chance + irandom(99);
	if crit >= 100 {
	    _shot_dam = _shot_dam * other.shot_stats.Shot_Crit_Multiple;
	}
	
	_shot_dam = (_shot_dam + bossweak + speeddmg) - max(0, (bossdefense - other.shot_stats.Shot_Armour_Pierce));

	if _shot_dam < 0 || is_nan(_shot_dam) {
		_shot_dam = 0;
	}
	
	var downward_boost = global.downwardSpiralBoost / 1.333
	
	_shot_dam += _shot_dam * downward_boost;
	bossweak += bossweak * downward_boost;

	scr_setup_dmg_indicator(x, y, _shot_dam - bossweak, c_white, bossweak);

	if _shot_dam > 0 {
	    bosshealth -= _shot_dam
		
		scr_State_Gain(_shot_dam);
	}



}
