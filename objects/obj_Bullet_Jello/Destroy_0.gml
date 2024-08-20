    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (1.2 + random(0.2));
    bullet_image_speed = 0.2;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 4;
    bullet_spread = 0;
    boss_radius = 0;
    
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 0;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
	
	scr_Suicide_Even_Shoot(4,bullet_speed,300);
    
    

