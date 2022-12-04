// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XC02_Shot_Mod(){
	if scr_Chance(30 / global.XC[2]) {
		
		shotsuck += 1 + 1.5 * global.XC[2];
		
		shotspeed -= shotspeed * 0.4;
		speed = shotspeed;
		shotsize += 0.2;
		shotsizemax += 0.2;
		image_xscale = shotsize;
		image_yscale = shotsize;
		
		shotlifespan += shotlifespan * 1;
		alarm[0] = shotlifespan;
		
		shotaura = 1;
		shotaurapower = shotpower;
		shotaurarange = 100;
		
		shotpierce += 1;
		
		//if shottrail = 0 {
			shottrail = 3;
			shottrailsprite = spr_Soul_Big_Bit;
			shottrailcolor1 = c_purple;
			shottrailcolor2 = c_black;
			shottraillife = 15;
			shottrailarea = 150;
			shottrailfrequency = 2;
	}
}