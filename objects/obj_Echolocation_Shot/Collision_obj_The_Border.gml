//scr_Soul_Outside_Check();

exit;

backSpeed = speed;
    
var i;
i = point_direction(other.x, other.y, x, y);
x += lengthdir_x(backSpeed, i);
y += lengthdir_y(backSpeed, i);

