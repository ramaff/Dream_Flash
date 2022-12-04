
direction = scr_Soul_Point();
speed = 0.25 * bossmovespeed;
alarm[0] = (120 + random(120)) / bossattackspeed;

    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Chaotic_Explode_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 0.7;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

    bullet_spread = 12;
    bullet_count = 3;
    scr_Soul_Shoot();


