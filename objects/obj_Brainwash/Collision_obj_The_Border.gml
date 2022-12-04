/// @description Insert description here
// You can write your code in this editor

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
 
