/// @description Insert description here
// You can write your code in this editor

if shot_stats.Shot_Follow_Origin.senergy >= shot_stats.Real_Essence_Cost / 10 {
	if alarm[0] <= 10 {
		alarm[0] = 10;
		shot_stats.Shot_Life_Span = shot_stats.Shot_Exist_Time + 10;
	}
}




