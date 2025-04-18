

var _i;
var _script_count = array_length(shot_stats.Shot_Step_Scripts)
for(_i = 0; _i < _script_count; _i++) {
	script_execute(shot_stats.Shot_Step_Scripts[_i])	
}

shot_stats.Shot_Exist_Time++;

/* if shot_stats.Shot_Ground = true {
	shot_stats.Shot_Lobbing = false;
	shot_stats.Shot_Height = 0;
	shot_stats.Shot_Fall_Speed = 0;
	shot_stats.Shot_Gravity = 0;
	shot_stats.Shot_Lobbing = false;
} */


/*if !instance_exists(shot_stats.Shot_Target) {
    shot_stats.Shot_Target = obj_Soul_Parent;
} */



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

if instance_exists(followtarget) {
	var setdist = 5 + shot_stats.Shot_Speed * 5;
	var dis = point_distance(x, y, followtarget.x, followtarget.y)
	var follow_dir = point_direction(x, y, followtarget.x, followtarget.y)
	if dis > setdist {
		speed = min(dis - setdist, 2 + shot_stats.Shot_Speed * 2);
		direction = follow_dir;
	} 
} 

scr_OB02();

if shot_stats.Shot_Looping > 0 and shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
    scr_Room_Loop_Everywhere_Ext();
}

