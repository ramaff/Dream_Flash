// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_Shot_Follow_The_Leader_Setup() {
	shot_stats.Shot_Follow_Target = noone;
	shot_stats.Shot_Follow_Tail = noone;
	
	var _head = shot_stats.Shot_Follow_Origin;
	var _tail = noone;
	with(obj_Projectile_Parent) {
		if instance_exists(shot_stats.Shot_Follow_Target) and shot_stats.Shot_Follow_Target == _head {
			_head = id;
			_tail = shot_stats.Shot_Follow_Tail
			break;
		}
	}
	while(instance_exists(_tail)) {
		with(_tail) {
			_head = id;
			if instance_exists(shot_stats.Shot_Follow_Tail)	{
				_tail = shot_stats.Shot_Follow_Tail
			} else {
				_tail = noone;	
			}
		}
	}
	shot_stats.Shot_Follow_Target = _head
	if _head != shot_stats.Shot_Follow_Origin {
		_head.shot_stats.Shot_Follow_Tail = id;
	}
}

function scr_Shot_Follow_The_Leader_Expire() {
	var _head = shot_stats.Shot_Follow_Target
	if instance_exists(shot_stats.Shot_Follow_Tail) {
		with (shot_stats.Shot_Follow_Tail) {
			shot_stats.Shot_Follow_Target = _head	
		}
	}
}

// Location Soul Step Before
function scr_Shot_Follow_The_Leader(){
		
	if !instance_exists(shot_stats.Shot_Follow_Target) || shot_stats.Shot_Follow_Target = noone {
		exit;
	}
			
	var setdist = 40;
	var dis = point_distance(x, y, shot_stats.Shot_Follow_Target.x, shot_stats.Shot_Follow_Target.y)
	var follow_dir = point_direction(x, y, shot_stats.Shot_Follow_Target.x, shot_stats.Shot_Follow_Target.y)
	if dis > setdist {
		speed = min(dis - setdist, 2 + shot_stats.Shot_Speed * 2);
		direction = follow_dir;
	} else {
		speed = lerp(speed, 0, 0.05);
	}
}