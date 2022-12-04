image_angle = direction;
direction += 2;

if bulletcrowdspeed != 0 {
	x += lengthdir_x(bulletcrowdspeed, bulletcrowddirection);	
	y += lengthdir_y(bulletcrowdspeed, bulletcrowddirection);	
	
	bulletcrowdspeed += bulletcrowdacceleration;
}