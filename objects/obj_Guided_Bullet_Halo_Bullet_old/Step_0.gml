image_angle = direction;

if instance_exists(obj_Soul_Parent) {

    var bulletCenterX = obj_Soul_Parent.perX;
    var bulletCenterY = obj_Soul_Parent.perY;
	
	var bulletOrbit = max(0, alarm[0] * bulletspeed / 3) 
    
    //var bulletCircumference = distance_to_point(bulletCenterX,bulletCenterY) * 3.14;
    
    bulletAngle += 2;
    //bulletAngle = bulletAngle mod 360
    
	var xx = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
	var yy = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
	
	var dis = point_distance(x,y,xx,yy)
	
	speed = 0;
	
	x = lerp(x, xx, bulletspeed / 400);
	y = lerp(y, yy, bulletspeed / 400);

}
