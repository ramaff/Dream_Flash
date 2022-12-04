// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Attack_Time_Setup(patternCount = 1, delay = 15, attackSpacing = 1, cooldownTime = 90, cooldownVariance = 30, addedDurationTime = 15) {
	bossActiveAttackDelay[1] = delay;
	bossPatternCount = patternCount;
	bossPatternCooldown = delay;
	bossPatternCooldownMax = attackSpacing;
	bossPatternCountMax = bossPatternCount;
		
	bossActiveAttackCooldown[1] = cooldownTime + random(cooldownVariance);
	bossActiveAttackDuration[1] = addedDurationTime - (attackSpacing - delay) + (bossPatternCooldownMax * bossPatternCount);
}