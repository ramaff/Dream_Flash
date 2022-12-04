image_angle = direction;
direction += diradd;

diradd += diraddadd;

if abs(diradd) > 7 {
	diraddadd = diraddadd * -1;
}
speed = bulletspeed;

