// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XA04_Shot_Mod(){
	if global.XA[4] > 0 and scr_Chance(4) and Soul_Hearts_Control.heart[global.currentheart, 2] = 53 {
		shotspeed += 2 * global.XA[4];
		speed = shotspeed;
		
		shotfire += 2 * global.XA[4];
		shotfireticks = 3;
		shotfiretime = 90;
		
		//if shottrail < 2 {
			shottrail = 2;
			shottrailsprite = spr_Soul_Big_Bit;
			shottrailcolor1 = c_red;
			shottrailcolor2 = c_yellow;
			shottraillife = 10;
			shottrailarea = 20;
			shottrailfrequency = 2;
		//}
	}
}