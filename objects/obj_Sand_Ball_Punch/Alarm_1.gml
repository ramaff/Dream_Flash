dir = 0;
repeat(1) {
    with instance_create(x,y,obj_Sandman_Punch) {
        scr_Bullet_Replicate_Properties();
        sprite_index = spr_Sandman_Punch;
        bulletsize = 0.3;
        image_xscale = 0.3;
        image_yscale = 0.3;
        bulletspeed = other.bulletspeed * (1 + random(0.25));
        bulletpower = other.bulletpower * 1;
        speed = bulletspeed;
        direction = scr_Soul_Point();
        direction += -5 + random(10);
		image_angle = direction;
    }
} 

instance_destroy()

