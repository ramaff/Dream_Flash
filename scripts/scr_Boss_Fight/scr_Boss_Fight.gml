// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Fight(){

	if ((global.bosscount <= 0) and (global.spiritRoom != global.currentroom) and (global.evilSpiritRoom != global.currentroom)) and instance_number(obj_Boss_Parent) = 0 { 
		return false;
	} else {
		return true;	
	}

}