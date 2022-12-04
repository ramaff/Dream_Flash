    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Periwinkle_Shot;
    bullet_speed = bossbulletspeed * 2;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if champ = 0 || champ = 1 {
    if currentphase = 1 || 2 {
        bossattack = 1;
        
        if bossattack = 1 {
            //bullet_count = 8 + (2 * irandom(2));
            bullet_spread = 5;
            bullet_lifespan = 400;
            bullet_speed = bossbulletspeed * 2;
            patterncount = 6 + random(6);
            bullet_direction = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
            alarm[0] = (120 + random(120)) / bossattackspeed;
            alarm[1] = 1 + 3 / bossattackspeed;
        }
        
        speed = bossmovespeed * (0.2 + random(0.2));
        direction = random(360);
    }
}

