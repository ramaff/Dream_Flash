/// @description Insert description here
// You can write your code in this editor
alarm[6] = 15;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

if global.XB[4] >= 1 {
	scr_XB04();	
}

var cHeart = Soul_Hearts_Control.heart[global.currentheart, 2]
if cHeart = 17 {
	scr_H17_Bubble();	
}