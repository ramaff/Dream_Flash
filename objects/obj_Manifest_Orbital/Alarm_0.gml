    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Periwinkle_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if champ = 0 || champ = 1 {
    if currentphase = 1 || 2 {
        bossattack = 1 + irandom(1);
        
        if bossattack = 1 {
            var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
            speed = (1 + random(2)) * bossmovespeed;
            friction = 0.02 * bossmovespeed;
            direction = bossdirection;
        }
        
        if bossattack = 2 {
            var bossdirection = random(360)
            speed = (1 + random(2)) * bossmovespeed;
            friction = 0.02 * bossmovespeed;
            direction = bossdirection;
        }
        
        bullet_count = 3 + (1 * irandom(2));
        bullet_spread = 15;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed + speed - 2;
        scr_Soul_Shoot();
        alarm[0] = (120 + random(120)) / bossattackspeed;
    }
}

