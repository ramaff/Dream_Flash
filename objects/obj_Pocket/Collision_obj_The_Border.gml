/// @description Insert description here
// You can write your code in this editor

scr_Room_Loop_Everywhere();

/*
// Inherit the parent event
if champ = 0 || champ = 3 {
    direction = point_direction(x,y,instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y);

	bossDashDirection = direction;
}


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

	direction += -30 + random(60);

	bossDashDirection = direction;


	scr_Soul_Outside_Check();
}

