// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// locations: scr_Spirit_Boss_BullFX_Pre

function scr_XB05(ogCount) {
	if global.XB[5] >= 1 and scr_Chance(8 / (1 + global.XB[5])) {
		bullet_count = floor(bullet_count * (1.2 + random(0.9)));
		bullet_spread = ((bullet_spread / bullet_count) * ogCount);
		if bullet_spread = 0 {
			bullet_spread += 15 * (bullet_count - ogCount);
		}
	}
}