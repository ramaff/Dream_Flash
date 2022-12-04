event_inherited();

if bossReaction > 1 {
    repeat(bossReaction - 1) {
        
        scr_Default_Attack_Settings();
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Blue_Shot;
        bullet_speed = bossbulletspeed;
        bullet_power = bosspower * 1;
        bullet_direction = (-15 + random(30)) / bossaccuracy;
        bullet_lifespan = 300;
        bullet_size = 1.25;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_count = 3;
        bullet_spread = 30;
        bullet_lifespan = 150;
        
        bullet_speedfac_min = 1;
        bullet_speedfac_add = 0.75;
        bullet_timefac_min = 0.9;
        bullet_timefac_add = 0.5;
        
        scr_Soul_Shoot_Vomit();
        
    }
    bossReaction = 1;
}

