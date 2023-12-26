// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XA02_Shot_Mod(){
	if scr_Chance(18 / global.XA[2]) {
		shotpower += shotpower;
		shotpowermax += shotpowermax;
		shotPowerLevel += shotPowerLevel;
		shotspeed += shotspeed * 0.33;
		speed = shotspeed;
		shotsize += 0.2;
		shotsizemax += 0.2;
		image_xscale = shotsize;
		image_yscale = shotsize;
		
		//if shottrail = 0 {
			shottrail = 2;
			shottrailsprite = spr_Soul_Big_Bit;
			shottrailcolor1 = c_red;
			shottrailcolor2 = c_red
			shottraillife = 15;
			shottrailarea = 30;
			shottrailfrequency = 2;
	}
}