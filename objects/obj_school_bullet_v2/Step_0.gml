
event_inherited()

bullet_stats.orbit_angle += bullet_stats.bullet_speed / 2;

if instance_exists(bullet_stats.bullet_target) {
    var _xx = bullet_stats.bullet_target.x;
    var _yy = bullet_stats.bullet_target.y; 
    
    var _tarx = lengthdir_x(bullet_stats.orbit_distance, bullet_stats.orbit_angle) + _xx;
    var _tary = lengthdir_y(bullet_stats.orbit_distance, bullet_stats.orbit_angle) + _yy;
	
	direction = point_direction(x, y, _tarx, _tary);
	speed = min(bullet_stats.bullet_speed * 2, point_distance(x, y, _tarx, _tary))
	
} else {
    instance_destroy();
}

