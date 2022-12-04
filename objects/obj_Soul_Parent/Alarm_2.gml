/// @description Insert description here
// You can write your code in this editor

var heartReload = 15;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

var cHeart = Soul_Hearts_Control.heart[global.currentheart, 2]

if cHeart = 51 {
	heartReload = 45;
	scr_H51();
}

scr_OC02(cHeart);

alarm[2] = heartReload;