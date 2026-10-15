// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Boss Create Script

function scr_B12(){

	if global.B[12] > 0 and object_index != obj_Boss_Empathy_Heart {
		var ct = id;
		var ang = 0;
		var dis = 20;

		for(var i = 0; i < global.B[12]; i++) {
			with instance_create_depth(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang), 0,obj_Boss_Empathy_Heart) {
				followtarget = ct;
				ct = id;
			}
			ang += 45;
			dis += 5 + (300 / dis);
		}
	}

}