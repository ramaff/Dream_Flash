alarm[1] = 18;

with instance_create(x,y,obj_Direction_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Enemy_Shot;
    bulletspeed = other.bulletspeed * 0.02;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction - 10 + random(20);;
    alarm[0] = 90;
}

