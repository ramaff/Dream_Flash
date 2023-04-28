alarm[2] = 360 / (bulletspeed + (bulletOrbit / 10));

with instance_create(x,y,obj_Accel_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Yellow_Shot;
    bulletspeed = 2 + other.bulletspeed * 0.2;
    bulletpower = global.stagedamage;
    speed = bulletspeed;
    direction = other.bulletAngle;
    bulletlifespan = 120;
    alarm[0] = bulletlifespan;
}

