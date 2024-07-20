// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// SOul Parent Alarms

// Turn Off Code: Room Change

function scr_XA03(){
	if global.temperActive = true {
		
		var damageamount = round((1 + random(1)) * global.XA[3]);
		var defenseamount = 0;
		scr_Soul_Damage_Calculation(damageamount, defenseamount);
	}
	
}