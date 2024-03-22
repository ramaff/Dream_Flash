// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XA04_Shot_Mod(){
	if sprite_index = spr_Seething_Fire_Shot {
		exit;	
	}
	
	if global.XA[4] > 0 and Soul_Hearts_Control.heart[global.currentheart, 2] = 53 {
		if shot_stats.Shot_Speed != 0 {
			shot_stats.Shot_Speed += 2 * global.XA[4];
			speed = shot_stats.Shot_Speed;
		}
		
		/*shotfire += 3 * global.XA[4];
		shotfireticks = 4;
		shotfiretime = 30; */
		
		scr_Shot_Power_Set(1.2);
		
		if shotimpacttype = 0 {
            shotimpacttype = 1;
        }
		
		shotimpactpower += 4 * global.XA[4];
        shotimpactsize += 40;
		if shotimpactsize <= 80 {
			shotimpactsize = 80;
		}
		if shotimpactpower <= 8 {
			shotimpactpower = 8;	
		}
		shotImpactPowerLevel = shotimpactpower;
		
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