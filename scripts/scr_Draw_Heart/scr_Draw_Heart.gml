// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Draw_Heart(_heart_num_float, _percent){

	var _heart_num = _heart_num_float - frac(_heart_num_float);
	var scale = 1 / Camera_Control.view_zoom;

	if _heart_num = 1 {
		scr_Draw_Heart_Health(spr_Lesser_Heart, scale, _percent, 78, 72);
	}
	if _heart_num = 2 {
	    scr_Draw_Heart_Health(spr_Regen_Heart, scale, _percent, 84, 78);
	}
	if _heart_num_float = 3 {
		scr_Draw_Heart_Health(spr_Survivor_Heart, scale, _percent, 78, 72, 10);
	}
	if _heart_num_float = 3.01 {
	    draw_sprite_ext(spr_Survivor_Heart,2,x,y,0.5 * scale,0.5 * scale,0,c_white,1);
	}
	if _heart_num_float = 3.02 {
	    draw_sprite_ext(spr_Survivor_Heart,3,x,y,0.5 * scale,0.5 * scale,0,c_white,1);
	}
	if _heart_num = 4 {
		scr_Draw_Heart_Health(spr_Jumbo_Heart, scale, _percent, 88, 85);
	}
	if _heart_num = 5 {
		scr_Draw_Heart_Health(spr_Mechanical_Heart, scale, _percent, 80, 74, 24, 0, 1);
	}
	if _heart_num = 6 {
		scr_Draw_Heart_Health(spr_Undying_Heart, scale, _percent, 84, 78);
	}
	if _heart_num = 7 {
		scr_Draw_Heart_Health(spr_Hourglass_Heart, scale, _percent, 84, 89);
	}
	if _heart_num = 8 {
		scr_Draw_Heart_Health(spr_Spike_Heart, scale, _percent, 78, 72, 21);
	}
	if _heart_num = 9 {
		scr_Draw_Heart_Health(spr_Bleeding_Heart, scale, _percent, 91, 72, 27, 3);
	}
	if _heart_num = 10 {
		scr_Draw_Heart_Health(spr_Magician_Heart, scale, _percent, 85, 121, 0, 0, 10);
	}
	if _heart_num = 11 {
		scr_Draw_Heart_Health(spr_Rocket_Heart, scale, _percent, 78, 72, 33, 0, 0);
	}
	if _heart_num = 12 {
		scr_Draw_Heart_Health(spr_Lightning_Heart, scale, _percent, 78, 88, 0, 0, -4);
	}
	if _heart_num = 13 {
		scr_Draw_Heart_Health(spr_Scaley_Heart, scale, _percent, 84, 78);
	}
	if _heart_num = 14 {
		scr_Draw_Heart_Health(spr_Beast_Heart, scale, _percent, 83, 96, 0, 2);
	}
	if _heart_num = 15 {
		scr_Draw_Heart_Health(spr_Rubber_Heart, scale, _percent, 84, 78);
	}
	if _heart_num = 16 {
		scr_Draw_Heart_Health(spr_Jello_Heart, scale, _percent, 78, 96, 0, 0, 2);
	}
	if _heart_num = 17 {
		scr_Draw_Heart_Health(spr_Soapy_Heart, scale, _percent, 78, 72, 36);
	}
		
	if _heart_num = 51 {
		scr_Draw_Heart_Health(spr_Coping_Heart, scale, _percent, 78, 72);
	}
		
	if _heart_num = 52 {
		scr_Draw_Heart_Health(spr_Secure_Heart, scale, _percent, 78, 72);
	}
		
	if _heart_num = 53 {
		scr_Draw_Heart_Health(spr_Seething_Heart, scale, _percent, 88, 81);
	}
		
	if _heart_num = 103 {
		scr_Draw_Heart_Health(spr_Body_Bag_Heart, scale, _percent, 78, 72);
	}
}