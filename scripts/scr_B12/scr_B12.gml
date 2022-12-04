// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location: Boss Create Script

function scr_B12(){

	if global.B[12] > 0 and object_index != obj_Boss_Empathy_Heart {
		var ct = id;
		var ang = 0;
		var dis = 20;

		for(var i = 0; i < global.B[12]; i++) {
			with instance_create(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang),obj_Boss_Empathy_Heart) {
				/*show_debug_message("in")
				show_debug_message("dist: " + string(point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y)))
				show_debug_message("dist: " + string(distance_to_object(obj_Soul_Parent)))
				show_debug_message("x: " + string(x) + ", y: " + string(y))
				show_debug_message("x: " + string(obj_Soul_Parent.x) + ", y: " + string(obj_Soul_Parent.y))
				while(point_distance(x,y,obj_Soul_Parent.x, obj_Soul_Parent.y) < 100) {
					show_debug_message("move")
					y -= 50;
					x += 50;
				} */
				
				followtarget = ct;
		
				ct = id;
			}
			ang += 45;
			dis += 5 + (300 / dis);
		}
	}

}