/// @description Insert description here
// You can write your code in this editor
    ds_list_destroy(projectile_hits);
    scr_H14_Minion();
    
    scr_Default_Attack_Settings();

    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 180;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_count = 4;
    bullet_spread = 360 / bullet_count;
    bullet_lifespan = 300;
	
    
    scr_Suicide_Even_Shoot(4,bullet_speed * (1.75 + random(0.25)),300);

