speed += (bulletspeed / 2) / bulletlife;

var pdis = point_distance(x,y, obj_Soul_Parent.perX, obj_Soul_Parent.perY)

if ((abs(x - obj_Soul_Parent.perX) < 20) || (abs(y - obj_Soul_Parent.perY) < 20)) and (pdis > 50) {
	direction = point_direction(x,y,obj_Soul_Parent.perX, obj_Soul_Parent.perY);
} else if pdis > 600 {
	direction = point_direction(x,y,obj_Soul_Parent.perX, obj_Soul_Parent.perY);
}
		
direction = round(direction / 90) * 90;

scr_Bullet_Power_Size(0.5);

image_speed = 0;