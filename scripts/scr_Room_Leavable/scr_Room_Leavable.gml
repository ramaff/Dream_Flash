// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Leavable(){
	if instance_exists(obj_Soul_Collector) {
		return false
	}	
	
	return Floor_Layout_Control.Flash[global.currentroom,0] == "Normal" || (global.bosscount <= 0 and (((global.spiritRoom != global.currentroom) and (global.evilSpiritRoom != global.currentroom)) || global.currentroom = 0) and scr_Negative_Room_Check())
}