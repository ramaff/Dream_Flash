function scr_Boss_Attack_Step() {
	for(i = 0; i < 10; i++) {
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
