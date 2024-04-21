// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location Soul Step Before
function scr_XC06_Step(){

	if global.XC[6] > 0 {
		var setdist = 30 / global.XC[6]; 
		
		with (obj_Projectile_Parent) {
		
			if !instance_exists(shot_stats.Shot_Fear_Target) || shot_stats.Shot_Fear_Target = noone {
				var followtar = obj_Soul_Parent.id
				with (obj_Projectile_Parent) {
					shot_stats.Shot_Fear_Target = followtar
					followtar = id
				}
			}
			
			speed = speed * 0.95;
			//Print_DF(speed)
			
			if instance_exists(shot_stats.Shot_Fear_Target) {
				var _spec_dist = setdist * max(1, speed / 2.5)
				var _dis = point_distance(x, y, shot_stats.Shot_Fear_Target.x, shot_stats.Shot_Fear_Target.y)
				var _dir_from_tar = point_direction(shot_stats.Shot_Fear_Target.x, shot_stats.Shot_Fear_Target.y, x, y);
				var _x_tar = shot_stats.Shot_Fear_Target.x + lengthdir_x(_spec_dist, _dir_from_tar)
				var _y_tar = shot_stats.Shot_Fear_Target.y + lengthdir_y(_spec_dist, _dir_from_tar)

				if _dis > _spec_dist {
					var _lerp_amt = 0.05 + (0.05 * global.XC[6])
					x = lerp(x, _x_tar, _lerp_amt);
					y = lerp(y, _y_tar, _lerp_amt);
				} 
			} else {
				//speed = lerp(speed, 0, 0.3);
				instance_destroy();
			}
		}
	}
}