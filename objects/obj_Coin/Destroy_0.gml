/// @description Insert description here
// You can write your code in this editor

    scr_H14_Minion();
    
    scr_Default_Attack_Settings();

    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Orange_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-40 + random(80)) / bossaccuracy;
    bullet_lifespan = 180;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_count = 2;
    bullet_spread = 30;
    bullet_lifespan = 300;
	
	scr_Soul_Shoot()
    
    //scr_Suicide_Even_Shoot(3,bullet_speed,240);

