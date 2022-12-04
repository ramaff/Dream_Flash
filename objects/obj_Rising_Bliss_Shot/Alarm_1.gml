alarm[1] = 20;

with instance_create(x,y,obj_Fasing_Bullet_Parent) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Green_Shot;
    bulletspeed = other.bulletspeed * 0.15;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction - 5 + random(10);
    bulletlifespan = 120 + random(15);
    alarm[0] = bulletlifespan;
}

