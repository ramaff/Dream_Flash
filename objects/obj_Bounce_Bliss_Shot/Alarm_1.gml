alarm[1] = 20;

with instance_create(x,y,obj_Bounce_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Pink_Shot;
    bulletspeed = other.bulletspeed * 0.15;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction - 5 + random(10);
    bulletlifespan = 65;
    alarm[0] = 65;
}

