
if instance_exists(shotfolloworigin) {
	var umdir = point_direction(other.x, other.y, shotfolloworigin.x, shotfolloworigin.y)
	var dist = 1000 / max(1, point_distance(other.x, other.y, shotfolloworigin.x, shotfolloworigin.y))
	with (shotfolloworigin) {
		x += lengthdir_x(dist, umdir)
		y += lengthdir_y(dist, umdir)
	}
}


exit;

