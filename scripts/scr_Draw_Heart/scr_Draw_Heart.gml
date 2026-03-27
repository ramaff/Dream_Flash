// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Draw_Heart(_heart_num, _percent, _scale, _xx = x, _yy = y, _alpha = 1){

	switch(_heart_num) {
		case(1): 
			scr_Draw_Heart_Health(spr_Lesser_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72);
			break;
		case(2): 
		    scr_Draw_Heart_Health(spr_Regen_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78);
		    break;
		case(3): 
			scr_Draw_Heart_Health(spr_Survivor_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72, 10);
		    break;
		/*
		if _heart_num_float = 3.01 {
		    draw_sprite_ext(spr_Survivor_Heart,2,_xx,_yy,0.5 * _scale,0.5 * _scale,0,c_white,1);
		    break;
		if _heart_num_float = 3.02 {
		    draw_sprite_ext(spr_Survivor_Heart,3,_xx,_yy,0.5 * _scale,0.5 * _scale,0,c_white,1);
		    break;
		*/
		case(4): 
			scr_Draw_Heart_Health(spr_Jumbo_Heart, _xx, _yy, _scale, _alpha, _percent, 88, 85);
		    break;
		case(5): 
			scr_Draw_Heart_Health(spr_Mechanical_Heart, _xx, _yy, _scale, _alpha, _percent, 80, 74, 24, 0, 1);
		    break;
		case(6): 
			scr_Draw_Heart_Health(spr_Undying_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78);
		    break;
		case(7): 
			scr_Draw_Heart_Health(spr_Hourglass_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 89);
		    break;
		case(8): 
			scr_Draw_Heart_Health(spr_Spike_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72, 21);
		    break;
		case(9): 
			scr_Draw_Heart_Health(spr_Bleeding_Heart, _xx, _yy, _scale, _alpha, _percent, 91, 72, 27, 3);
		    break;
		case(10): 
			scr_Draw_Heart_Health(spr_Magician_Heart, _xx, _yy, _scale, _alpha, _percent, 85, 121, 0, 0, 10);
		    break;
		case(11): 
			scr_Draw_Heart_Health(spr_Rocket_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72, 33, 0, 0);
		    break;
		case(12): 
			scr_Draw_Heart_Health(spr_Lightning_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 88, 0, 0, -4);
		    break;
		case(13): 
			scr_Draw_Heart_Health(spr_Scaley_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78);
		    break;
		case(14): 
			scr_Draw_Heart_Health(spr_Beast_Heart, _xx, _yy, _scale, _alpha, _percent, 83, 96, 0, 2);
		    break;
		case(15): 
			scr_Draw_Heart_Health(spr_Rubber_Heart, _xx, _yy, _scale, _alpha, _percent, 84, 78);
		    break;
		case(16): 
			scr_Draw_Heart_Health(spr_Jello_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 96, 0, 0, 2);
		    break;
		case(17): 
			scr_Draw_Heart_Health(spr_Soapy_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72, 36);
		    break;
		
		case(51): 
			scr_Draw_Heart_Health(spr_Coping_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72);
		    break;
		
		case(52): 
			scr_Draw_Heart_Health(spr_Secure_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72);
		    break;
		
		case(53): 
			scr_Draw_Heart_Health(spr_Seething_Heart, _xx, _yy, _scale, _alpha, _percent, 88, 81);
		    break;
		
		case(103): 
			scr_Draw_Heart_Health(spr_Body_Bag_Heart, _xx, _yy, _scale, _alpha, _percent, 78, 72);
		    break;
	}
}