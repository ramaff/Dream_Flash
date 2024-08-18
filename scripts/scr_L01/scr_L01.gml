// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_L01(wenergy = 0){
	//weapon use
	
	var ess_to_drain = wenergy;
	
	var halfRate = 0;
	
	if senergy < ess_to_drain {
		ess_to_drain = wenergy - senergy;
	}
	var slot = variable_struct_get(Soul_Weapons_Control.weapon[0], "slot");
	var ammunition_essence = global.L01essence[slot];
	
	if ammunition_essence > 0 {
		if ammunition_essence < ess_to_drain {
			ess_to_drain = ammunition_essence;	
		}
		
		halfRate = 1;
		senergy += ess_to_drain;
		global.L01essence[slot] -= ess_to_drain;
	}
	
	return halfRate;
}