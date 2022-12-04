var i;
i = point_direction(other.x, other.y, x, y);
x += lengthdir_x(1 + speed, i);
y += lengthdir_y(1 + speed, i);

if(place_meeting(x + hspeed, y, obj_The_Border))
    direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_The_Border))
    direction = -direction;

scr_Soul_Outside_Check();