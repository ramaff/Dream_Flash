// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Extra_Hits_Tick(){
	if alarm[0] mod shot_stats.Shot_Extra_Hits_Frequency = 0 {
		shot_stats.Shot_ID_Offset++;	
	}
}