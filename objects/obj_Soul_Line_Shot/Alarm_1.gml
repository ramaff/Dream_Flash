alarm[1] = 6;

with instance_create(x,y,obj_Delayed_Home_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Night_Shot;
    bulletspeed = other.bulletspeed * (0.01 + random(0.04));
    bulletpower = other.bulletpower * 0.5;
    speed = 0;
    direction = other.direction - 10 + random(20);
    bulletlifespan = 300 + random(60);
    alarm[0] = bulletlifespan;
}

