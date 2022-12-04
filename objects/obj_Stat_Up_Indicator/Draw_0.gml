/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.5;
image_yscale = 0.5;
depth = -100;

image_blend = statUpCol;

draw_self();

draw_set_font(Weak_Damage_Font);
//draw_set_color(statUpCol);
scr_Draw_Text_Outlined(x,y - 6, c_black, c_white, statUpStr)