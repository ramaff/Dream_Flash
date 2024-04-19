
if instance_exists(shot_stats.Shot_Follow_Origin) {
	var umdir = point_direction(other.x, other.y, shot_stats.Shot_Follow_Origin.x, shot_stats.Shot_Follow_Origin.y)
	var dist = 1000 / max(1, point_distance(other.x, other.y, shot_stats.Shot_Follow_Origin.x, shot_stats.Shot_Follow_Origin.y))
	with (shot_stats.Shot_Follow_Origin) {
		x += lengthdir_x(dist, umdir)
		y += lengthdir_y(dist, umdir)
	}
}


exit;

