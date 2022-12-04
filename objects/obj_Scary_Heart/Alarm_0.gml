    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Bleeding_Direction_Bullet;
    bullet_speed = bossbulletspeed * (0.45 + random(0.1));
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

bossattack = 1;

if bossattack = 1 {
    bullet_spread = 16;
    bullet_count = 2;
    scr_Soul_Shoot();
    bullet_count = 1;
    bullet_speed -= 0.2;
    scr_Soul_Shoot();
}

if distance_to_object(obj_Soul_Parent) > 250 {
    direction = 45 * (1 + irandom(7));
    speed = 0.5 * bossmovespeed;
} else {
    dir = scr_Soul_Point() + 180;
    direction = dir - 15 + random(30);
    speed = 1.5 * bossmovespeed;
}
alarm[0] = (180 + random(90)) / bossattackspeed;

image_index = 1;
alarm[1] = 15;


