// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Attack_Time_Setup_v2(pattern_count = 1, delay = 15, attackSpacing = 1, cooldownTime = 90, cooldownVariance = 30, addedDurationTime = 15) {
	image_index = 0;
	
	activeAttackDelay = delay;
	patternCount = pattern_count;
	patternCooldown = delay;
	patternCooldownMax = attackSpacing;
	patternCountMax = patternCount;
		
	activeAttackCooldown = cooldownTime + random(cooldownVariance);
	activeAttackDuration = addedDurationTime - (attackSpacing - delay) + (patternCooldownMax * patternCount);

}
