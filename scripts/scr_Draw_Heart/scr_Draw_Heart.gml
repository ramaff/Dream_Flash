// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Draw_Heart(_heart_num, _percent, _scale, _xx = x, _yy = y, _alpha = 1){
	switch(_heart_num) {
		case(HEART_TYPE.NORMAL): scr_Draw_Heart_Health(spr_Lesser_Heart, _xx, _yy, _scale, _alpha, _percent, 90, 75) break;
		case(HEART_TYPE.MINI): scr_Draw_Heart_Health(spr_Mini_Heart, _xx, _yy, _scale, _alpha, _percent, 70, 63) break;
		case(HEART_TYPE.SURVIVOR): scr_Draw_Heart_Health(spr_Survivor_Heart, _xx, _yy, _scale, _alpha, _percent, 96, 97, 10) break;
		case(HEART_TYPE.JUMBO): scr_Draw_Heart_Health(spr_Jumbo_Heart, _xx, _yy, _scale, _alpha, _percent, 108, 92) break;
		case(HEART_TYPE.MECHANICAL): scr_Draw_Heart_Health(spr_Mechanical_Heart, _xx, _yy, _scale, _alpha, _percent, 80, 74, 24, 0, 1) break;
		case(HEART_TYPE.UNDYING): scr_Draw_Heart_Health(spr_Undying_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78) break;
		case(HEART_TYPE.FART):  scr_Draw_Heart_Health(spr_Fart_Heart, _xx, _yy, _scale, _alpha, _percent, 108, 104) break;
		case(HEART_TYPE.SPIKE): scr_Draw_Heart_Health(spr_Spike_Heart, _xx, _yy, _scale, _alpha, _percent, 128, 95, 0) break;
		case(HEART_TYPE.BLEEDING): scr_Draw_Heart_Health(spr_Bleeding_Heart, _xx, _yy, _scale, _alpha, _percent, 128, 110, 0, 0) break;
		case(HEART_TYPE.MAGICIAN):  scr_Draw_Heart_Health(spr_Magician_Heart, _xx, _yy, _scale, _alpha, _percent, 128, 107, 0, 0, 0) break;
		case(HEART_TYPE.ROCKET): scr_Draw_Heart_Health(spr_Rocket_Heart, _xx, _yy, _scale, _alpha, _percent, 128, 120, 0, 0, 0) break;
		case(HEART_TYPE.LIGHTNING): scr_Draw_Heart_Health(spr_Lightning_Heart, _xx, _yy, _scale, _alpha, _percent, 128, 111, 0, 0, 0) break;
		case(HEART_TYPE.SCALEY): scr_Draw_Heart_Health(spr_Scaley_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78) break;
		case(HEART_TYPE.BEAST): scr_Draw_Heart_Health(spr_Beast_Heart, _xx, _yy, _scale, _alpha, _percent, 83, 96, 0, 2) break;
		case(HEART_TYPE.RUBBER): scr_Draw_Heart_Health(spr_Rubber_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78) break;
		case(HEART_TYPE.JELLO): scr_Draw_Heart_Health(spr_Jello_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 96, 0, 0, 2) break;
		case(HEART_TYPE.SOAPY): scr_Draw_Heart_Health(spr_Soapy_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72, 36) break;
		case(HEART_TYPE.COPING): scr_Draw_Heart_Health(spr_Coping_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72) break;
		case(HEART_TYPE.SECURE): scr_Draw_Heart_Health(spr_Secure_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72) break;
		case(HEART_TYPE.SEETHING): scr_Draw_Heart_Health(spr_Seething_Heart, _xx, _yy, _scale, _alpha, _percent, 88, 81) break;
		case(HEART_TYPE.BODY_RAG): scr_Draw_Heart_Health(spr_Body_Bag_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72) break;
	}
}