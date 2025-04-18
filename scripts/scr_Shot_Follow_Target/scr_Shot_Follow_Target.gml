// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Follow_Target_Keep_Distance(){
	if instance_exists(followtarget) {
		var setdist = 5 + shot_stats.Shot_Speed * 5;
		var dis = point_distance(x, y, followtarget.x, followtarget.y)
		var follow_dir = point_direction(x, y, followtarget.x, followtarget.y)
		if dis > setdist {
			speed = min(dis - setdist, 2 + shot_stats.Shot_Speed * 2);
			direction = follow_dir;
		} 
	}
}