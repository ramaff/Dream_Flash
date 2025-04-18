// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Homing_2(){
	var _target = noone
	var _max_dis = 9999;
	if instance_exists(obj_Boss_Parent) {
		with obj_Boss_Parent {
		    var dis = distance_to_object(other);
			var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
			if !hit_again and dis < other.shot_stats.Shot_Homing_Range and dis < _max_dis {
				_target = id;
			}
		}
	}
	if _target != noone {
		var dist = point_distance(_target.x, _target.y, x, y);
		if dist > shot_stats.Shot_Speed {
			move_towards_point(_target.x,_target.y,shot_stats.Shot_Speed);
		} else {
			move_towards_point(_target.x,_target.y,dist);
		}
	}
}