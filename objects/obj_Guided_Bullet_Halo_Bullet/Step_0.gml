image_angle = direction;
bulletspeed += bulletspeed * 0.003;

if instance_exists(obj_Soul_Parent) {

    var bulletCenterX = center_x;
    var bulletCenterY = center_y;
	
	center_x += lengthdir_x(bulletspeed / 2, direction);
	center_y += lengthdir_y(bulletspeed / 2, direction);
	
	direction = scr_Angle_Converge(direction, scr_Soul_Point(), 0.5 + (bulletspeed / 6));
	
    bulletOrbit = 80 + (alarm[0] / 3);
    
    bulletAngle += 8;
    
	var xx = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
	var yy = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
	
	speed = 0;
	
	x = lerp(x, xx, 0.05);
	y = lerp(y, yy, 0.05);

}
