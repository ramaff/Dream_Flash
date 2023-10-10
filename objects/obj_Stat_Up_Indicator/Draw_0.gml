/// @description Insert description here
// You can write your code in this editor

var _text_offset = 6;
if level_up {
	image_xscale = 1;
	image_yscale = 1;
	draw_set_font(Strong_Damage_Font);
	_text_offset = 12
} else {
	image_xscale = 0.5;
	image_yscale = 0.5;
	draw_set_font(Weak_Damage_Font);
}

depth = -100;

if alarm[0] < 60 {
	image_alpha = max(alarm[0] / 60, scr_Wave(0, 1, 0.25, 0))	
}

image_blend = stat_up_col;

draw_self();
//draw_set_color(statUpCol);
scr_Draw_Text_Outlined(x,y - _text_offset, c_black, c_white, stat_up_str)