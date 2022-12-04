//image_angle = direction;
speed = bulletspeed * bulletspeedfac;

image_angle += speed;

var dis = point_distance(x,y, obj_Soul_Parent.perX, obj_Soul_Parent.perY);

if (dis < 300 and dis > 250) {
	
	fixeddir = scr_Soul_Point();
	bulletspeedfac = 1.4;
	
}
if dis < 300 {
	direction = fixeddir;	
}
