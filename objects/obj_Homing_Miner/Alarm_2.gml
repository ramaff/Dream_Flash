
with instance_create(x,y,obj_Explode_Hit) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Exploding_Shot;
    image_speed = 0;
    bulletsize = 1;
    image_xscale = 1;
    image_yscale = 1;
    bulletspeed = 0;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    alarm[0] = 30;
}

var dir = random(360);
repeat(8) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Enemy_Shot;
        bulletspeed = other.bulletspeed * 0.45;
        bulletpower = other.bulletpower * 0.5;
        direction = dir;
        speed = bulletspeed;
    }   
    dir += 45;
}
instance_destroy();

