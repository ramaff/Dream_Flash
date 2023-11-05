function scr_Boss_Attack_Setup(_version = 1) {
	
	// XB05
	boss_bullet_count_modded = false;
	
	// Old way
	if _version = 1 {
		for(i = 0; i < 10; i++) {
		    bossActiveAttack[i] = 0;
		    bossPassiveAttack[i] = 0;
		    bossActiveAttackDelay[i] = 0;
		    bossPassiveAttackDelay[i] = 0;
		    bossNextActiveAttack[i] = 0;
		    bossActiveAttackDuration[i] = 0;
		    bossPassiveAttackDuration[i] = 0;
		    bossPassiveAttackCooldown[i] = 60
		    bossActiveAttackCooldown[i] = 60 / bossattackspeed;
		    bossPassivePatternsDirection[i] = 0;
		    bossPatternsCount[i] = 0;
		    bossPatternsDirection[i] = 0;
		    bossPatternsCooldown[i] = 0;
			
		}
		
		
		
		bossAttacking = 0;
	    bossPassivePatternDirection = 0;
	    bossPatternCount = 0;
	    bossPatternDirection = 0;
	    bossPatternCooldown = 0;
	}
	if _version = 2 {
		active_attack = 0;
		active_attack_delay = 0;
		active_attack_duration = 0;
		active_attack_cooldown = 60 / bossattackspeed;

	    pattern_count = 0;
		pattern_count_max = 0;
	    pattern_direction = 0;
	    pattern_cooldown = 0;
	    pattern_cooldown_max = 0;
		
		pattern_repetition = 0;
	}

	setbeamlength = 0;

}
