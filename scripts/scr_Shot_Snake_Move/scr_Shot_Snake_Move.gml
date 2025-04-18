// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Snake_Move(){
	if shot_stats.Shot_Snake_Move = 2 {
		var _target = noone
		if instance_exists(obj_Boss_Parent) {
			var mdist = 10000;
			var dis = 0;
		    with obj_Boss_Parent {
		        dis = distance_to_object(other);
		        if _target == noone || dis < mdist {
					if collision_circle(other.x, other.y, 10000, id, true, false) {
						_target = id;
						mdist = dis;
					}
				}
		    }
		}
	
		if _target != noone {
			if (abs(x - _target.x) < 20) || (abs(y - _target.y) < 20){
				direction = point_direction(x,y,_target.x, _target.y);
			}
			if distance_to_point(_target.x, _target.y) < 50 {
				shot_stats.Shot_Snake_Move = 1;	
			}
		} else {
			if (abs(x - shot_stats.Shot_Target_X) < 20) || (abs(y - shot_stats.Shot_Target_Y) < 20){
				direction = point_direction(x,y,shot_stats.Shot_Target_X, shot_stats.Shot_Target_Y);
			}
			if distance_to_point(shot_stats.Shot_Target_X, shot_stats.Shot_Target_Y) < 50 {
				shot_stats.Shot_Snake_Move = 1;	
			}
		}
	
	}

	if shot_stats.Shot_Snake_Move > 0 {
		direction = scr_Angle_Converge(direction, round(direction / 90) * 90, 10)
	}
}