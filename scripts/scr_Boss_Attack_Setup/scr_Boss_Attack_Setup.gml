function scr_Boss_Attack_Setup(version = 1) {
	
	// XB05
	boss_bullet_count_modded = false;
	
	// Old way
	if version = 1 {
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
	if version = 2 {
		activeAttack = 0;
		activeAttackDelay = 0;
		activeAttackDuration = 0;
		activeAttackCooldown = 60 / bossattackspeed;

	    patternCount = 0;
		patternCountMax = 0;
	    patternDirection = 0;
	    patternCooldown = 0;
	    patternCooldownMax = 0;
	}

	setbeamlength = 0;

}
