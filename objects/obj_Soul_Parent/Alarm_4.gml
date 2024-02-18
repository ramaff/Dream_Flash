/// @description Insert description here
// You can write your code in this editor

alarm[4] = 5;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

if scr_State_Active_Check("Beast") {
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

scr_U08();
scr_P08();

if scr_State_Active_Check("Bleeding") and speed > 4 {
	scr_After_Image(20, false, true)	
}