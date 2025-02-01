    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Jelly_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_image_speed = 0.2;
    bullet_power = bosspower * 0.25;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 0;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    scr_Soul_Shoot();

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (1.2 + random(0.05));
    bullet_image_speed = 0.2;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 3;
    bullet_spread = 0;
    boss_radius = 0;
    
	bullet_count = 3;
    bullet_spread = 360 / bullet_count;
    bullet_lifespan = 300;
    
    scr_Suicide_Even_Shoot(3,bullet_speed,240);


	ds_list_destroy(projectile_hits);
	