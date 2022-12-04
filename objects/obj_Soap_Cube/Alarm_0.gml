    scr_Default_Attack_Settings();
    bullet_type = obj_Bounce_Bullet;
    bullet_sprite = spr_Lob_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 170;
    bullet_size = 0.75;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

bossattack = 1 + irandom(2);

if bossattack = 1 || 2 {
    direction = scr_Soul_Point();
	speed = 4 * bossmovespeed;
}
if bossattack = 3 {
    direction = 45 * (1 + irandom(7));
    speed = 4 * bossmovespeed;
    
    scr_Soul_Shoot();
}

friction = speed / 45;
alarm[0] = (120 + random(80)) / bossattackspeed;


