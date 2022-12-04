    scr_Default_Attack_Settings();
    bullet_type = obj_Tar_Pool;
    bullet_sprite = spr_Tar_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_image_speed = 0.2;
    bullet_power = bosspower * 0.25;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 0;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
	
	scr_Suicide_Even_Shoot(1,bullet_speed,300);
