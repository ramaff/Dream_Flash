// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location Soul Step Before
function scr_XC06_Step(){

	if global.XC[6] > 0 {
		var setdist = 30 / global.XC[6]; 
		
		with (obj_Projectile_Parent) {
		
			if !instance_exists(followtarget) || followtarget = noone {
				var followtar = obj_Soul_Parent.id
				with (obj_Projectile_Parent) {
					followtarget = followtar
					followtar = id
				}
			}
			
			speed = speed * 0.95;
	
			if instance_exists(followtarget) {
				var dis = point_distance(x, y, followtarget.x, followtarget.y)
				if dis > setdist {
					x = lerp(x, followtarget.x, 0.05);
					y = lerp(y, followtarget.y, 0.05);
				} 
			} else {
				//speed = lerp(speed, 0, 0.3);
				instance_destroy();
			}
		}
	}
}