image_angle = direction;
bulletspeed -= bulletspeed * 0.002;

if instance_exists(obj_Soul_Parent) {

    var bulletCenterX = center_x;
    var bulletCenterY = center_y;
	
	center_x += lengthdir_x(bulletspeed / 2, direction);
	center_y += lengthdir_y(bulletspeed / 2, direction);
	
	direction = scr_Angle_Converge(direction, scr_Soul_Point(), 1.2);
	
    bulletOrbit = max(270 - (alarm[0] / 2), 10) 
    
    bulletAngle += 6;
    
	var xx = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
	var yy = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
	
	speed = 0;
	
	x = lerp(x, xx, 0.05);
	y = lerp(y, yy, 0.05);

}
