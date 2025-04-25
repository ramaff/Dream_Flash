// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_State_Step_Scripts(){
	if scurrentstate = "Powering Up" {
		scr_State_Powering_Up();	
	}

	scr_State_Power_Down();
	
	var sCap = smaxstate;
	
	if sstatecharge > sCap {
		sstatecharge = sCap;
	}
	
	if scurrentstate != "Base" and global.bosscount > 0 {
		sstatecharge -= sstatedrainrate;
	}

}