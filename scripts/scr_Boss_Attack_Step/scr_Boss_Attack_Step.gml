function scr_Boss_Attack_Step(_version = 1) {
	if _version = 1 {
		var _attack_speed_calced = min(1, 1 * bossattackspeed)
		
		for(i = 0; i < 4; i++) {
		    if bossActiveAttackDuration[i] <= 0 {
		        bossActiveAttackCooldown[i] -= _attack_speed_calced;
		    }
		    if bossPassiveAttackDuration[i] <= 0 {
		        bossPassiveAttackCooldown[i] -= _attack_speed_calced;
		    }
		    if bossActiveAttackDelay[i] <= 0 {
		        bossActiveAttackDuration[i] -= _attack_speed_calced;
		    }
		    bossPatternsCooldown[i] -= _attack_speed_calced;
		    bossActiveAttackDelay[i] -= _attack_speed_calced;
		    bossPassiveAttackDelay[i] -= _attack_speed_calced;
		}
		
		bossPatternCooldown -= (_attack_speed_calced);
	} 
	if _version = 2 {
		if active_attack_duration <= 0 {
		    active_attack_cooldown -= 1 * bossattackspeed;
		}
		if active_attack_delay <= 0 {
		    active_attack_duration -= 1;
		}
		active_attack_delay -= 1;
		pattern_cooldown -= 1;
	}




}
