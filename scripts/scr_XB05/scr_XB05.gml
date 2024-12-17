// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// locations: scr_Spirit_Boss_BullFX_Pre

function scr_XB05_v2(_attack_stats) {
	// setup in scr_Boss_Attack_Setup
	
	var _og_count = _attack_stats.bullet_count
	
	if global.XB[5] >= 1 and scr_Chance(8 / (1 + global.XB[5])) {
		_attack_stats.bullet_count = floor(_attack_stats.bullet_count * (1.2 + random(0.9)));
		_attack_stats.bullet_spread = ((_attack_stats.bullet_spread / _attack_stats.bullet_count) * _og_count);
		if _attack_stats.bullet_spread = 0 {
			_attack_stats.bullet_spread += 15 * (_attack_stats.bullet_count - _og_count);
		}
	}
}

function scr_XB05(ogCount) {
	// setup in scr_Boss_Attack_Setup
	
	if boss_bullet_count_modded = false and global.XB[5] >= 1 and scr_Chance(8 / (1 + global.XB[5])) {
		bullet_count = floor(bullet_count * (1.2 + random(0.9)));
		bullet_spread = ((bullet_spread / bullet_count) * ogCount);
		if bullet_spread = 0 {
			bullet_spread += 15 * (bullet_count - ogCount);
		}
		boss_bullet_count_modded = true;
	}
}