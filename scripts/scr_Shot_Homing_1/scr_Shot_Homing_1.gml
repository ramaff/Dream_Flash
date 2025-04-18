// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Homing_1(){
	var _target = noone
	var _max_dis = 9999;
	if instance_exists(obj_Boss_Parent) {
		with(obj_Boss_Parent) {
		    var dis = distance_to_object(other);
			var hit_again = variable_struct_exists(projectile_hits, other.shot_boss_id)
			if !hit_again and dis < other.shot_stats.Shot_Homing_Range and dis < _max_dis {
				_target = id;
			}
		}
	}
	if _target != noone {
    
	    direction = scr_Angle_Converge(direction, point_direction(x, y, _target.x, _target.y), shot_stats.Shot_Homing_Speed)
	}
}