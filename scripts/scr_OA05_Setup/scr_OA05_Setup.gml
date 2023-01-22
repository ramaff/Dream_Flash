// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Chapter_Change_COntrol

function scr_OA05_Setup(){
	//global.OA5rooms[6] = 1;
	//global.OA5rooms[12] = 1;
	if global.OA[5] > 0 {
		for(var i = 0; i <= 39; i++) {
			var rm = Floor_Layout_Control.Flash[i,0]
			if rm = "Misc Field" || rm = "Chamber" {
				global.OA5rooms[i] = 1;
			}
		}
	}
}