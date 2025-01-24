// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Leavable(_tick_down = false){
	
	if instance_exists(obj_Soul_Collector) {
		return false
	}
	
	if global.floor[global.currentroom,0] == "Normal" || global.floor[global.currentroom,0] == "Shop" {
		return true	
	}
	
	var _no_bosses = (instance_number(obj_Main_Boss_Parent) <= 0 and (((global.spiritRoom != global.currentroom) and (global.evilSpiritRoom != global.currentroom)) || global.currentroom = 0) and scr_Negative_Room_Check())

	if _tick_down == 1 {
		if _no_bosses == 1 {
			global.bosstimer--;
			if global.bosstimer < 0 {
				global.bosstimer = 0	
			}
		} else {
			global.bosstimer++;
			if global.bosstimer > 3 {
				global.bosstimer = 3	
			}
		}
	}
	
	if global.bosstimer > 0 {
		return false
	} else {
		return _no_bosses	
	}
	
}