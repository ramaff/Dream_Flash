
//move_towards_point(obj_Soul_Parent.x,obj_Soul_Parent.y, 1.3 * bossmovespeed);
alarm[0] = 150 + irandom(120);

    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (1.2 + random(0.2));
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 1;
    boss_radius = 0;

    bullet_spread = 15;
    bullet_count = 2;
    scr_Soul_Shoot();