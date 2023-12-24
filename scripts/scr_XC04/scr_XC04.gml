// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Hit Reactions

function scr_XC04(){
	if global.XC[4] > 0 {
		global.downwardSpiralBoost += 0.02 * (global.XC[4]);
	}
}