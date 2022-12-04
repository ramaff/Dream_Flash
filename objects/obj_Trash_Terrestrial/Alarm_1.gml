exit;
        scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if champ = 0 || champ = 1 || champ = 2 {

    if bossattack = 2 and currentphase = 1
    if patterncount > 0 {
        bullet_speed = bossbulletspeed * 1;
        bullet_direction = patterndirection;
        scr_Just_Shoot();
        if champ = 0 || 2 {
            patterndirection += 90;
        }
        if champ = 1 {
            patterndirection += 45;
        }
        patterncount -= 1;
        alarm[1] = (15) / bossattackspeed;
    }
    
    if currentphase = 2
    if patterncount > 0 {
        bullet_type = obj_Basic_Bullet;
        bullet_speed = bossbulletspeed * 1.5;
        bullet_direction = patterndirection;
        bullet_spread = 15;
        bullet_count = 6 - patterncount;
        alarm[1] = (25) / bossattackspeed;
        if champ = 1 {
            bullet_count = 8 - patterncount;
            alarm[1] = (30) / bossattackspeed;
        }
        if champ = 0 || champ = 1 {
            scr_Just_Shoot();
        }
        if champ = 2 {
            bullet_direction = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
            scr_Just_Shoot();
        }
        patterncount -= 1;
    }
    
}



