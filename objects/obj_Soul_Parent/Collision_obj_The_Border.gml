if(place_meeting(x + hspeed, y, obj_The_Border))
	direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_The_Border))
	direction = -direction;

exit;

var backSpeed = speed + 1.6 * smovementspeed * ((10 + scr_Get_Status_Magnitude(id, "movement_mult")) / 10) * ((10 + smovementfactor) / 10) * ((40 + global.souldexterity) / 40);

var i;
i = point_direction(other.x, other.y, x, y);
x += lengthdir_x(backSpeed, i);
y += lengthdir_y(backSpeed, i);

if(place_meeting(x + soulCurrentHorizontalSpeed, y, obj_The_Border))
	soulCurrentDirection = -soulCurrentDirection + 180;

//Vertical bounce
if(place_meeting(x, y + soulCurrentVerticalSpeed, obj_The_Border))
	soulCurrentDirection = -soulCurrentDirection;
