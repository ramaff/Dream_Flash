if champ = 0 {
    direction = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
}
if champ = 1 {
    backSpeed = speed;
        
    var i;
    i = point_direction(other.x, other.y, x, y);
    x += lengthdir_x(backSpeed, i);
    y += lengthdir_y(backSpeed, i);
}

