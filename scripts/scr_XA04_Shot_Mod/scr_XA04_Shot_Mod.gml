// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Extra Shot Stats

function scr_XA04_Shot_Mod(){
	
	if global.XA[4] > 0 and Soul_Hearts_Control.heart[global.currentheart, 2] = 53 {
		repeat(global.XA[4]) {
			shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * 0.6;
			shot_stats.Shot_Speed += shot_stats.Shot_Speed * 0.33;
		}
		speed = shot_stats.Shot_Speed;
		alarm[0] = shot_stats.Shot_Life_Span;
		////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
		
		shot_stats.Shot_Fire += 2 * global.XA[4];
		
		shot_stats.Shot_Fire_Ticks += 3;
		if shot_stats.Shot_Fire_Time = 0 {
			shot_stats.Shot_Fire_Time = 30;
		}
		
		shot_stats.Shot_Wave_Direction = (10 * (round(other.sWeaponTicker) mod 2)) - 5
		shot_stats.Shot_Wave_Acceleration = (2.5 * (round(other.sWeaponTicker) mod 2)) - 1.25;
		shot_stats.Shot_Wave_Time = 8;
		
		shot_stats.Shot_Trail = 2;
		shot_stats.Shot_Trail_Sprite = "spr_Soul_Big_Bit";
		shot_stats.Shot_Trail_Color_1 = c_red;
		shot_stats.Shot_Trail_Color_2 = c_yellow
		shot_stats.Shot_Trail_Life = 15;
		shot_stats.Shot_Trail_Area = 45;
		shot_stats.Shot_Trail_Frequency = 2;
	}
}