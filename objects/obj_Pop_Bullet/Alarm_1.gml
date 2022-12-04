/*
with instance_create(x,y,obj_Explode_Hit) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Boss_Bullet_Explosion;
    image_speed = 1;
    bulletsize = 0.75;
    image_xscale = 0.75;
    image_yscale = 0.75;
    bulletspeed = other.bulletspeed * 2;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    alarm[0] = 15;
}
*/
instance_destroy();

