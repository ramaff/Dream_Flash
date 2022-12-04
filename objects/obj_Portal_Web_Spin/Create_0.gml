alarm[1] = 30;
alarm[2] = 60;
//alarm[10] = 30;

scr_Bullet_Teleport();

direction = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y)

dir = 0;
im = direction;
rspeed = 2.5;

patterndir = random(360);

spindir = irandom(1);