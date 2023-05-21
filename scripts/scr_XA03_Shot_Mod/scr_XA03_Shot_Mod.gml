// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_XA03_Shot_Mod(){
	if global.temperActive = true {
		
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
		
		shotwavedirection = (10 * (round(other.sWeaponTicker) mod 2)) - 5
		shotwaveacceleration = (2.5 * (round(other.sWeaponTicker) mod 2)) - 1.25;
		shotwavetime = 8;
		
		shottrail = 2;
		shottrailsprite = spr_Soul_Big_Bit;
		shottrailcolor1 = c_red;
		shottrailcolor2 = c_yellow
		shottraillife = 15;
		shottrailarea = 45;
		shottrailfrequency = 2;
	}
}