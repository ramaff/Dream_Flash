// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Up_Indication(_stat_up = 0, _level_up = false){
	
	var _stat_up_string = "None Somehow"
	var _stat_up_color = c_white;
	
	if _stat_up = 1 {
		_stat_up_string = "STR"
		_stat_up_color = make_color_rgb(255,6,20);	
	}
	if _stat_up = 2 {
		_stat_up_string = "VIT"
		_stat_up_color = make_color_rgb(214,0,255);
	}
	if _stat_up = 3 {
		_stat_up_string = "ESS"
		_stat_up_color =  make_color_rgb(0,156,255);	
	}
	if _stat_up = 4 {
		_stat_up_string = "DEX"
		_stat_up_color = make_color_rgb(0,255,8);
	}
	if _stat_up = 5 {
		_stat_up_string = "PER"
		_stat_up_color = make_color_rgb(140,0,255);
	}
	if _stat_up = 6 {
		_stat_up_string = "STE"
		_stat_up_color = make_color_rgb(255,74,0);	
	}
	if _stat_up = 7 {
		_stat_up_string = "HPE"
		_stat_up_color = make_color_rgb(214,0,255);
	}
	if _stat_up = 8 {
		_stat_up_string = "BLS"
		_stat_up_color = make_color_rgb(3,255,119);	
	}
	if _stat_up = 9 {
		_stat_up_string = "ASS"
		_stat_up_color = make_color_rgb(3,98,255);	
	}
	if _stat_up = 10 {
		_stat_up_string = "LOA"
		_stat_up_color = make_color_rgb(187,14,0);	
	}
	if _stat_up = 11 {
		_stat_up_string = "PAR"
		_stat_up_color = make_color_rgb(0,29,198);	
	}
	if _stat_up = 12 {
		_stat_up_string = "DES"
		_stat_up_color = make_color_rgb(55,34,95);	
	}
	
	
	var _dir = 70 + random(40);
	_xx = room_width / 2;
	_yy = (room_height / 2) - 50;
	var _obj = obj_Stat_Up_Indicator;
	
	if _level_up {
		_stat_up_string = _stat_up_string + " LEVELED UP"	
		_obj = obj_Class_Level_Up_Indicator;
	}
	
	if instance_exists(obj_Soul_Parent) {
		if !_level_up {
			var _xx = obj_Soul_Parent.x + lengthdir_x(100 + random(200), _dir)
			var _yy = obj_Soul_Parent.y - 40 + random(60)	
		}
	
		with instance_create(_xx, _yy, _obj) {
			stat_up_str = _stat_up_string;
			stat_up_col = _stat_up_color;
			level_up = _level_up
		}
		
	}
	
}