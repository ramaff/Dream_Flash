// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_C11_Shot_Mod(excess_essence = 0){

	if global.C[11] >= 1 {
		if senergy >= (smaxenergy / 2) {
			Shot_Size = sqrt((Shot_Size * Shot_Size) + (0.15 * global.C[11]));
			var boost_fac = (1 + (0.3 * global.C[11]))
			Shot_Power = Shot_Power * boost_fac;
			Shot_Burst_Power = Shot_Burst_Power * boost_fac
			Shot_Stats.Shot_Excess_Essence += excess_essence * global.C[11];
			if global.currentweapon = 14 {
				Shot_Stats.Shot_Excess_Essence += excess_essence * global.C[11] * 2;
			}
			senergy -= excess_essence * global.C[11];
		}
	}

}