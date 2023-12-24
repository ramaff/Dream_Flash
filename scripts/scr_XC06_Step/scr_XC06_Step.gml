// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location Soul Step Before
function scr_XC06_Step(){

	if global.XC[6] > 0 {
		var setdist = 30 / global.XC[6]; 
		
		with (obj_Projectile_Parent) {
		
			if !instance_exists(feartarget) || feartarget = noone {
				var followtar = obj_Soul_Parent.id
				with (obj_Projectile_Parent) {
					feartarget = followtar
					followtar = id
				}
			}
			
			speed = speed * 0.95;
			//Print_DF(speed)
			
			if instance_exists(feartarget) {
				var _spec_dist = setdist * max(1, speed / 2)
				var _dis = point_distance(x, y, feartarget.x, feartarget.y)
				var _dir_from_tar = point_direction(feartarget.x, feartarget.y, x, y);
				var _x_tar = feartarget.x + lengthdir_x(_spec_dist, _dir_from_tar)
				var _y_tar = feartarget.y + lengthdir_y(_spec_dist, _dir_from_tar)

				if _dis > _spec_dist {
					x = lerp(x, _x_tar, 0.05);
					y = lerp(y, _y_tar, 0.05);
				} 
			} else {
				//speed = lerp(speed, 0, 0.3);
				instance_destroy();
			}
		}
	}
}