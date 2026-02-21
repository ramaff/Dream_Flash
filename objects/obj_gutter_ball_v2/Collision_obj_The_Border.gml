/// @description Insert description here
// You can write your code in this editor

scr_Primative_Bounce()

if instance_exists(obj_pin_v2) {
	direction = point_direction(x,y,instance_nearest(x,y,obj_pin_v2).x,instance_nearest(x,y,obj_pin_v2).y);
} else {
	direction = scr_Angle_Converge(direction, scr_Soul_Point(), 30)	
}

dash_direction = direction;


scr_Soul_Outside_Check();



