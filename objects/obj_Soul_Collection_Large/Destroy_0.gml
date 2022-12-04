    with (minionbossparent) {
		bosshealth -= 300;
	}
	
	scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Jelly_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_image_speed = 0.2;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 0;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    scr_Soul_Shoot();
    
    ds_list_destroy(projectile_hits);
    scr_H14_Minion();

