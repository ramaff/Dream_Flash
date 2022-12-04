    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if champ = 0 {
    if currentphase = 1 || 2 {
        bossattack = 1;
        
        if bossattack = 1 {
            bullet_count = 8 + (2 * irandom(2));
            bullet_spread = 360 / bullet_count;
            bullet_lifespan = 400;
            bullet_speed = bossbulletspeed;
            scr_Just_Shoot();
            alarm[0] = (120 + random(120)) / bossattackspeed;
        }
        
        speed = bossmovespeed * (0.2 + random(0.2));
        direction = random(360);
    }
}

