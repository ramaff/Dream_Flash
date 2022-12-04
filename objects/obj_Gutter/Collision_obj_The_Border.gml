/// @description Insert description here
// You can write your code in this editor
//if champ = 0 {
    direction = point_direction(x,y,instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y);
//}

scr_Screen_Shake(5,5);

if instance_exists(obj_Pin) {
	direction = point_direction(x,y,instance_nearest(x,y,obj_Pin).x,instance_nearest(x,y,obj_Pin).y);
}

bossDashDirection = direction;

whit = 1;

if state = states.normal || state = states.jumping {
	var i;
	i = point_direction(other.x, other.y, x, y);
	x += lengthdir_x(1 + speed, i);
	y += lengthdir_y(1 + speed, i);

	if(place_meeting(x + hspeed, y, obj_The_Border))
	    direction = -direction + 180;

	//Vertical bounce
	if(place_meeting(x, y + vspeed, obj_The_Border))
	    direction = -direction;

	bossDashDirection = direction;


	scr_Soul_Outside_Check();
}