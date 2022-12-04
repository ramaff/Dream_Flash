
if instance_exists(obj_Soul_Parent) {

    bulletCenterX = obj_Soul_Parent.perX;
    bulletCenterY = obj_Soul_Parent.perY;
    
    bulletCircumference = distance_to_point(bulletCenterX,bulletCenterY) * 3.14;
    
    bulletAngle += bulletspeed / 10// * (360 / bulletCircumference);
    if (bulletAngle >= 360) {
        bulletAngle -= 360;
    }
    
	var xx = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
	var yy = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;
	var dis = point_distance(x,y,xx,yy)
	
	if bulletspeed < dis {
		move_towards_point(xx,yy,bulletspeed);	
	} else {
		move_towards_point(xx,yy,dis);
	}
	
    //x = lengthdir_x(bulletOrbit, bulletAngle) + bulletCenterX;
   // y = lengthdir_y(bulletOrbit, bulletAngle) + bulletCenterY;

}