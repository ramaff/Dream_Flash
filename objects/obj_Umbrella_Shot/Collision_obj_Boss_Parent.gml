
if instance_exists(shotfolloworigin) {
	var umdir = point_direction(x, y, shotfolloworigin.x, shotfolloworigin.y)
	var dist = point_distance(other.x, other.y, shotfolloworigin.x, shotfolloworigin.y) / 50
	with (shotfolloworigin) {
		x += lengthdir_x(dist, umdir)
		y += lengthdir_y(dist, umdir)
	}
}


exit;

