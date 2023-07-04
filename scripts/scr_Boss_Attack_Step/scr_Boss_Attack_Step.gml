function scr_Boss_Attack_Step(_version = 1) {
	if _version = 1 {
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
	if _version = 2 {
		if active_attack_duration <= 0 {
		    active_attack_cooldown -= 1 * bossattackspeed;
		}
		if active_attack_delay <= 0 {
		    active_attack_duration -= 1;
		}
		active_attack_delay -= 1 * bossattackspeed;
		pattern_cooldown -= (1 * bossattackspeed);
	}




}
