
direction = scr_Soul_Point();
speed = 0.25 * bossmovespeed;
alarm[0] = (3 + irandom(2)) / bossattackspeed;

    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Intense_Big_Fire_Shot;
    bullet_speed = bossbulletspeed * 1.23;
    bullet_power = bosspower;
    bullet_direction = (-7 + random(14)) / bossaccuracy;
    bullet_lifespan = 56;
    bullet_size = 0.75;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
    
    bullet_count = 1;
    scr_Soul_Shoot();


