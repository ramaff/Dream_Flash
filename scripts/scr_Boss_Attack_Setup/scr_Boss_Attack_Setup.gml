function scr_Boss_Attack_Setup() {
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

		setbeamlength = 0;

}
