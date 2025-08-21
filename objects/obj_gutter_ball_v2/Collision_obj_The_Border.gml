/// @description Insert description here
// You can write your code in this editor


var i;
i = point_direction(other.x, other.y, x, y);
x += lengthdir_x(1 + speed, i);
y += lengthdir_y(1 + speed, i);

if(place_meeting(x + hspeed, y, obj_The_Border))
	direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_The_Border))
	direction = -direction;


if instance_exists(obj_pin_v2) {
	direction = point_direction(x,y,instance_nearest(x,y,obj_pin_v2).x,instance_nearest(x,y,obj_pin_v2).y);
} else {
	direction = scr_Angle_Converge(direction, scr_Soul_Point(), 30)	
}

dash_direction = direction;


scr_Soul_Outside_Check();



