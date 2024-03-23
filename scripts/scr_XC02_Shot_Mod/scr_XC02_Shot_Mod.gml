// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XC02_Shot_Mod(){
	if scr_Chance(15 / global.XC[2]) {
		
		shot_stats.Shot_Suck += 0.5 + 1 * global.XC[2];
		shot_stats.Shot_Suck_Type = 2;
		
		shot_stats.Shot_Speed -= shot_stats.Shot_Speed * 0.4;
		speed = shot_stats.Shot_Speed;
		shot_stats.Shot_Size += 0.2;
		shot_stats.Shot_Size_Max += 0.2;
		image_xscale = shot_stats.Shot_Size;
		image_yscale = shot_stats.Shot_Size;
		
		shot_stats.Shot_Life_Span += shot_stats.Shot_Life_Span * 1;
		alarm[0] = shot_stats.Shot_Life_Span;
		
		shot_stats.Shot_Homing_Type = 1;
		shot_stats.Shot_Homing_Range = max(150, shot_stats.Shot_Homing_Range + 150);
		shothomingspeed = max(3, shothomingspeed + 2);
		
		/* shot_stats.Shot_Aura = 1;
		shot_stats.Shot_Aura_Power = shot_stats.Shot_Power;
		shot_stats.Shot_Aura_Range = 100; */
		
		shotpierce += 1;
		
		//if shot_stats.Shot_Trail = 0 {
			shot_stats.Shot_Trail = 3;
			shot_stats.Shot_Trail_Type = obj_Black_Hole_Part
			shot_stats.Shot_Trail_Sprite = spr_Soul_Big_Bit;
			shot_stats.Shot_Trail_Color1 = make_color_rgb(50, 0, 100)
			shot_stats.Shot_Trail_Color2 = make_color_rgb(50, 0, 250)
			shot_stats.Shot_Trail_Life = 15;
			shot_stats.Shot_Trail_Area = 150;
			shot_stats.Shot_Trail_Frequency = 4;
	}
}