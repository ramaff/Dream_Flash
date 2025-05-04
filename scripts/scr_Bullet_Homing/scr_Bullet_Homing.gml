// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Homing(_speed = bulletspeed, _rspeed = rspeed, _smart_home = false, _angle_point = false) {

	var _ang = direction;

	var _point_dir = scr_Soul_Point();
	_ang += sin(degtorad(_point_dir - _ang)) * _rspeed;
	
	if _smart_home = true {
		var _ang_dif = abs(angle_difference(_point_dir, _ang))
		if _ang_dif > 15 {
			speed -= _speed * (_ang_dif - 15) / 30
		}
		speed = min(speed + 0.5, _speed);
	}
	
	direction = _ang;
	
	if _angle_point = true {
		image_angle = _ang	
	}

}