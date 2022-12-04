image_angle = direction;
direction += diradd;

diradd += diraddadd;

if abs(diradd) > 9 {
	diraddadd = diraddadd * -1;
}
speed = bulletspeed;

