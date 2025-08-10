// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_W06(_star_x, _star_y, _xx, _yy){

	if global.W[6] > 0 {
	
		var _size = sqrt(global.W[6]) / 2
		
		var _link_1 = noone;
		var _link_2 = noone;
		
		var _dir = point_direction(_star_x, _star_y, _xx, _yy)
		
		with instance_create_depth(_star_x, _star_y, depth + 50, obj_Astral_Link) {
			image_angle = _dir;
			image_xscale = _size;
			image_yscale = _size;
			alarm[0] = 360 * _size;
			alarm[1] = alarm[0] / 2;
			image_speed = 0;
			image_index = 0;
			
			_link_1 = id;
			portal_direction = _dir
		}
		with instance_create_depth(_xx, _yy, depth + 50, obj_Astral_Link) {
			image_angle = _dir;
			image_xscale = _size;
			image_yscale = _size;
			alarm[0] = 360 * _size;
			alarm[1] = alarm[0] / 2;
			image_speed = 0;
			image_index = 1;
			
			_link_2 = id;
			
			portal_direction = _dir
		}
		
		_link_1.link = _link_2
		_link_2.link = _link_1
	
	}

}