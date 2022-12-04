/// @description Insert description here
// You can write your code in this editor

alarm[4] = 5;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

var reverie = false;
if global.F[5] >= 1 {
	reverie = scr_Chance(10 / global.F[5]);
}

if scurrentstate = "Beast" || (obj_Soul_Parent.stransformedstate == "Beast" and reverie == true) {
	scr_Beast_Maw_Use();
}

if soulsleep = 1 and scr_Chance(6) {
	instance_create(x,y,obj_Sleep_Part);	
}

scr_XC02_Soul_Visual();

var cHeart = Soul_Hearts_Control.heart[global.currentheart, 2]
if cHeart = 17 {
	scr_H17_Pool();	
}