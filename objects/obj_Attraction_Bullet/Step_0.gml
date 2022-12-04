if instance_exists(obj_Infatuation_Cloud) {
    move_towards_point(instance_nearest(x,y,obj_Infatuation_Cloud).x,instance_nearest(x,y,obj_Infatuation_Cloud).y, bulletspeed);
} else {
instance_destroy();
}
image_angle = direction;

