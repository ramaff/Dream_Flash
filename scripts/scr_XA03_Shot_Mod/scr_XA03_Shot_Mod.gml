// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XA03_Shot_Mod(){
	if global.temperActive = true {
		//shotpower += shotpower * 0.2 * global.XA[3];
		//shotpowermax += shotpowermax * 0.2 * global.XA[3];
		//shotPowerLevel += shotPowerLevel * 0.2 * global.XA[3];
		
		repeat(global.XA[3]) {
			shotlifespan = shotlifespan * 0.6;
			shotspeed += shotspeed * 0.33;
		}
		speed = shotspeed;
		alarm[0] = shotlifespan;
		shottimer = shotlifespan;
		
		shotfire += 2 * global.XA[3];
		
		shotfireticks += 2;
		if shotfiretime = 0 {
			shotfiretime = 60;
		}
		
		shotwavedirection = -5 + (10 * other.sWeaponTicker mod 2)
		shotwaveacceleration = -1.25 + (2.5 * other.sWeaponTicker mod 2);
		shotwavetime = 8;
		
		//if shotimpacttype = 0 {
        //    shotimpacttype = 1;
        //}
		
		//shotimpactpower += 4;
        //shotimpactsize += 40;
		//if shotimpactsize <= 80 {
		//	shotimpactsize = 80;
		//}
		//if shotimpactpower <= 8 {
		//	shotimpactpower = 8;	
		//}
		//shotImpactPowerLevel = shotimpactpower;
		
		//if shottrail = 0 {
			shottrail = 2;
			shottrailsprite = spr_Soul_Big_Bit;
			shottrailcolor1 = c_red;
			shottrailcolor2 = c_yellow
			shottraillife = 15;
			shottrailarea = 45;
			shottrailfrequency = 2;
		//}
	}
}