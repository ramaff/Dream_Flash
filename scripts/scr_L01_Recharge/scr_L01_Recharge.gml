// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_L01_Recharge(){
	/// Soul Create Mod
	
	var i = 0;
	for(i = 0; i < 9; i++) {
		global.L01essence[i] = 50 * global.L[1];
	}
}