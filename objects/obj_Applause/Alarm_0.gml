exit;
        scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if champ = 0 || champ = 1 || champ = 2 {
    if currentphase = 1 {
        bossattack = 1 + irandom(1);
        
        var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        speed = 0.5 * bossmovespeed;
        direction = bossdirection;
        
        if bossattack = 1 {
            bullet_speed = bossbulletspeed * 1.25;
            if champ = 2 {
                bullet_sprite = spr_Boss_Sai;
                bullet_type = obj_Phasing_Hatred_Bullet;
                bullet_lifespan = 500;
            }
            if champ = 1 {
                bullet_count = 2;
                bullet_spread = 30;
            }
            scr_Soul_Shoot();
            alarm[0] = (150 + random(60)) / bossattackspeed;
            }
        
        if bossattack = 2 {
            speed = 0;
            alarm[2] = 61 / bossattackspeed;
            alarm[1] = 1 + 15 / bossattackspeed;
            alarm[0] = (240 + random(60)) / bossattackspeed;
            bulletdirection = random(360);
            patterndirection = bulletdirection;
            patterncount = 4;
            if champ = 1 {
                patterncount = 8;
            }
        }
    }
    if currentphase = 2 {
        alarm[1] = 1 + 10 / bossattackspeed;
        alarm[0] = (210 + random(60)) / bossattackspeed;
        if champ = 2 {
            alarm[0] = (150 + random(60)) / bossattackspeed;
        }
        patterndirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        patterncount = 3;
        if champ = 1 {
            speed = 0;
            scr_Boss_Teleport();
            patterncount = 4;
            patterndirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
            alarm[0] = (240 + random(60)) / bossattackspeed
        }
    }
    
    
}


