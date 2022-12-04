if distance_to_object(obj_Soul) < 135 {
    with instance_create(x,y,obj_Proportional_Homing_Bullet) {
            scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = 0;
            image_yscale = 0;
            sprite_index = spr_Glowy_Blue_Shot;
			bulletstun = 1;
			bulletstuntime = 15;
            bulletspeed = 5 + other.bulletspeed * 2;
			speed = bulletspeed;
            bulletpower = 0;
			bulletlife = (point_distance(x,y,instance_nearest(x,y,obj_Soul_Parent).perX,instance_nearest(x,y,obj_Soul_Parent).perY) / bulletspeed) + 5;
			alarm[0] = bulletlife;
            direction = scr_Soul_Point();
            speed = bulletspeed;
    }
}

alarm[1] = 1;

