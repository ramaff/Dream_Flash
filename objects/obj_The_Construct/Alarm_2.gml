alarm[2] = 30;

var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
speed = 0.6 * bossmovespeed;
direction = bossdirection;

