// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Soul_Maintain(){
	if instance_exists(shot_stats.Shot_Follow_Origin) {
		x = shot_stats.Shot_Follow_Origin.x + shot_stats.Shot_X_Maintain;
		y = shot_stats.Shot_Follow_Origin.y + shot_stats.Shot_Y_Maintain;
	}
}