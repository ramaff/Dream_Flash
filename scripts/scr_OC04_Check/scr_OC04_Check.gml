// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Soul Damage Calculation

function scr_OC04_Check(damage) {

	if global.OC[4] > 0 {
		damage += damage * (0.5 * global.OC4Debuff);
		global.OC4Debuff = global.OC[4];	
	}
	
	return damage;

}