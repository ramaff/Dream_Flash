alarm[1] = 60 + random(90);
bulletspeed = speed;

scr_Proj_Teleport();

if instance_exists(obj_Infatuation_Cloud) {
    move_towards_point(instance_nearest(x,y,obj_Infatuation_Cloud).x,instance_nearest(x,y,obj_Infatuation_Cloud).y, bulletspeed);
    bulletlifespan = distance_to_object(instance_nearest(x,y,obj_Infatuation_Cloud)) / bulletspeed;
    alarm[0] = bulletlifespan;
}

