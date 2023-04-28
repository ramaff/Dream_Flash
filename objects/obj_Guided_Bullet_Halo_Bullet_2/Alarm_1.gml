alarm[1] = 120 / (bulletspeed + (bulletOrbit / 10));

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Yellow_Shot;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = global.stagedamage;
    speed = 0;
    direction = other.direction - 10 + random(20);
    bulletlifespan = 80;
    alarm[0] = bulletlifespan;
}

