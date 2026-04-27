// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Soul Damage Calculation

function scr_OC04_Check(damage) {

	if global.OC[4] > 0 {
		damage += damage * (0.5 * global.OC4Debuff);
		if global.OC4Debuff <= 0 {
			//global.soulshotsizefactor -= 0.5;
			obj_Soul_Parent.ssize -= 0.2 + (0.2 * global.OC[4]);
			obj_Soul_Parent.sshotsizefactor -= 0.2 * global.OC[4];
			obj_Soul_Parent.spowerfactor -= 3 * global.OC[4];
		}
		global.OC4Debuff = global.OC[4];
	}
	
	return damage;

}