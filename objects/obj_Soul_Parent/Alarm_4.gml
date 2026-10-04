alarm[4] = 5;

if global.currentheart < 0 {
	global.currentheart = 0;	
}

scr_H14();

var cHeart = global.currenthearttype
if cHeart = 17 {
	scr_H17_Pool();	
}

scr_U08();
scr_P08();
scr_Q01();

if scr_State_Active_Check("Bleeding") and speed > 4 {
	scr_After_Image(20, false, true)	
}