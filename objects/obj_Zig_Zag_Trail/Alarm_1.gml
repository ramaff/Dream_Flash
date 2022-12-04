alarm[1] = 20;

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Yellow_Shot;
    bulletspeed = other.bulletspeed * 0.25;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction - 10 + random(20);;
    alarm[0] = 105 + random(45);
}

