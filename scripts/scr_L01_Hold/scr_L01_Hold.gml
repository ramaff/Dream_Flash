// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_L01_Hold(){
	//weapon use
	
	var eeDrain = (weapStop + wenergy);
	
	var halfRate = 0;
	
	if senergy < eeDrain {
		eeDrain = (weapStop + wenergy) - senergy;
	}
	var slot = Soul_Weapons_Control.weapon[0,1];
	var eeContain = global.L01essence[slot];
	
	if eeContain > 0 {
		if eeContain < eeDrain{
			eeDrain = eeContain;	
		}
		
		halfRate = 1;
		senergy += eeDrain;
		global.L01essence[slot] -= eeDrain;
	}
	
	return halfRate;
}