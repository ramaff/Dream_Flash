// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Up_Indication(statUp){
	
	var statUpString = "None Somehow"
	var statUpColor = c_white;
	
	if statUp = 1 {
		statUpString = "STR"
		statUpColor = make_color_rgb(255,6,20);	
	}
	if statUp = 2 {
		statUpString = "VIT"
		statUpColor = make_color_rgb(214,0,255);
	}
	if statUp = 3 {
		statUpString = "ESS"
		statUpColor =  make_color_rgb(0,156,255);	
	}
	if statUp = 4 {
		statUpString = "DEX"
		statUpColor = make_color_rgb(0,255,8);
	}
	if statUp = 5 {
		statUpString = "PER"
		statUpColor = make_color_rgb(140,0,255);
	}
	if statUp = 6 {
		statUpString = "STE"
		statUpColor = make_color_rgb(255,74,0);	
	}
	if statUp = 7 {
		statUpString = "HPE"
		statUpColor = make_color_rgb(214,0,255);
	}
	if statUp = 8 {
		statUpString = "BLS"
		statUpColor = make_color_rgb(3,255,119);	
	}
	if statUp = 9 {
		statUpString = "ASS"
		statUpColor = make_color_rgb(3,98,255);	
	}
	if statUp = 10 {
		statUpString = "LOA"
		statUpColor = make_color_rgb(187,14,0);	
	}
	if statUp = 11 {
		statUpString = "PAR"
		statUpColor = make_color_rgb(0,29,198);	
	}
	if statUp = 12 {
		statUpString = "DES"
		statUpColor = make_color_rgb(55,34,95);	
	}
	
	var dir = 70 + random(40);
	var xx = lengthdir_x(100 + random(200), dir)
	
	with instance_create(obj_Soul_Parent.x + xx, obj_Soul_Parent.y - 40 + random(60), obj_Stat_Up_Indicator) {
		statUpStr = statUpString;
		statUpCol = statUpColor;
	}
	
}