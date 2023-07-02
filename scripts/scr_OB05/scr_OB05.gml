// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OB05(truedam){

	if global.OB[5] > 0 {
		with instance_create(x,y,obj_Bliss_Damage_Over_Time) {
			target = obj_Soul_Parent.id;
			damage_over_time = truedam * 0.9;
			time = 300 * global.OB[5];
			alarm[0] = time;
			alarm[1] = 15;
		}
		return truedam * 0.1;
	}
	return truedam;

}