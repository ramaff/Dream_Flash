// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XA02_Shot_Mod(){
	if scr_Chance(18 / global.XA[2]) {
		shot_stats.Shot_Power += shot_stats.Shot_Power;
		shot_stats.Shot_Powermax += shot_stats.Shot_Powermax;
		shotPowerLevel += shotPowerLevel;
		shot_stats.Shot_Speed += shot_stats.Shot_Speed * 0.33;
		speed = shot_stats.Shot_Speed;
		shot_stats.Shot_Size += 0.2;
		shot_stats.Shot_Size_Max += 0.2;
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
		
		//if shot_stats.Shot_Trail = 0 {
			shot_stats.Shot_Trail = 2;
			shot_stats.Shot_Trail_Sprite = spr_Soul_Big_Bit;
			shot_stats.Shot_Trail_Color1 = c_red;
			shot_stats.Shot_Trail_Color2 = c_red
			shot_stats.Shot_Trail_Life = 15;
			shot_stats.Shot_Trail_Area = 30;
			shot_stats.Shot_Trail_Frequency = 2;
	}
}