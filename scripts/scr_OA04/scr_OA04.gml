// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OA04(){
// Location: Shot Creation Script

	if global.OA[4] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		shot_stats.Shot_Wishful += global.OA[4];
	}
}