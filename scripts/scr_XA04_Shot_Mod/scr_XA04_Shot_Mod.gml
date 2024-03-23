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
		
		if shot_stats.Shot_Impact_Type = 0 {
            shot_stats.Shot_Impact_Type = 1;
        }
		
		shot_stats.Shot_Impact_Power += 4 * global.XA[4];
        shot_stats.Shot_Impact_Size += 40;
		if shot_stats.Shot_Impact_Size <= 80 {
			shot_stats.Shot_Impact_Size = 80;
		}
		if shot_stats.Shot_Impact_Power <= 8 {
			shot_stats.Shot_Impact_Power = 8;	
		}
		shot_stats.Shot_Impact_Power_Level = shot_stats.Shot_Impact_Power;
		
		//if shot_stats.Shot_Trail < 2 {
			shot_stats.Shot_Trail = 2;
			shot_stats.Shot_Trail_Sprite = spr_Soul_Big_Bit;
			shot_stats.Shot_Trail_Color1 = c_red;
			shot_stats.Shot_Trail_Color2 = c_yellow;
			shot_stats.Shot_Trail_Life = 10;
			shot_stats.Shot_Trail_Area = 20;
			shot_stats.Shot_Trail_Frequency = 2;
		//}
	}
}