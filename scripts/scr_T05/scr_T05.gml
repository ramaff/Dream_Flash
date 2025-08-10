// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_T05(star_x, star_y, _tele_delay){

	if instance_number(obj_Retrace_My_Steps) < global.T[5] {
		instance_create_depth(star_x, star_y, depth, obj_Retrace_My_Steps) {
			warp_x = star_x;
			warp_y = star_y;
			
			alarm[0] = _tele_delay
		}
	}

}