// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// SOul Parent Alarms

// Turn Off Code: Room Change

function scr_XA03(){
	if global.temperActive = true {
		/*
		with (Soul_Hearts_Control) {
			for(i = 1; i < 24; i++) {
			    heart[i,3] -= 0.2;
			}
		} */
		damageamount = 1 * global.XA[3];
		defenseamount = 0;
		scr_Soul_Damage_Calculation();
	}
	
}