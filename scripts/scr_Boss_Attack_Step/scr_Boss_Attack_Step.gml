function scr_Boss_Attack_Step(version = 1) {
	if version = 1 {
		for(i = 0; i < 4; i++) {
		    if bossActiveAttackDuration[i] <= 0 {
		        bossActiveAttackCooldown[i] -= 1 * bossattackspeed;
		    }
		    if bossPassiveAttackDuration[i] <= 0 {
		        bossPassiveAttackCooldown[i] -= 1 * bossattackspeed;
		    }
		    if bossActiveAttackDelay[i] <= 0 {
		        bossActiveAttackDuration[i] -= 1 * bossattackspeed;
		    }
		    bossPatternsCooldown[i] -= 1 * bossattackspeed;
		    bossActiveAttackDelay[i] -= 1 * bossattackspeed;
		    bossPassiveAttackDelay[i] -= 1 * bossattackspeed;
		}
		
		bossPatternCooldown -= (1 * bossattackspeed);
	} 
	if version = 2 {
		if activeAttackDuration <= 0 {
		    activeAttackCooldown -= 1 * bossattackspeed;
		}
		if activeAttackDelay <= 0 {
		    activeAttackDuration -= 1;
		}
		activeAttackDelay -= 1 * bossattackspeed;
		patternCooldown -= (1 * bossattackspeed);
	}




}
