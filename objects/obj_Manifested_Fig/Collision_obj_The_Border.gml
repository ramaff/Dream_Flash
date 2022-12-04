backSpeed = speed + 0.5;
    
var i;
i = point_direction(other.x, other.y, x, y);
x += lengthdir_x(backSpeed, i);
y += lengthdir_y(backSpeed, i);

speed = smovementspeed;

