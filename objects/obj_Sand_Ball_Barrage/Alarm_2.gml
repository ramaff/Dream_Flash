alarm[2] = 12;

var dir = arraydir;

arraydir = scr_Angle_Converge(arraydir, scr_Soul_Point(), 7.5)


repeat(1) {
    with instance_create(x,y,obj_Phase_Bullet) {
        depth = -1.5;
        bulletlifespan = 240;
        scr_Bullet_Replicate_Properties();
        sprite_index = spr_Glowy_Enemy_Shot
        bulletsize = 0.5;
        image_xscale = 0.5;
        image_yscale = 0.5;
        bulletspeed = other.bulletspeed * (1.25);
        bulletpower = other.bulletpower * 0.5;
        speed = bulletspeed;
        alarm[0] = 240;
        direction = dir;
    }
}

