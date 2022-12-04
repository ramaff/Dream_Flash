    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_Up_Direction_Bullet;
    bullet_sprite = spr_Fire_Shot
    bullet_speed = bossbulletspeed * (0.66 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

bossattack = 1;

if bossattack = 1 {
	scr_Boss_Stretch("Horizontal", 0.5);
    bullet_count = 1;
    scr_Soul_Shoot();
}

direction = 45 * (1 + irandom(7));
speed = (0.25 + random(0.25)) * bossmovespeed;
alarm[0] = (180 + random(60)) / bossattackspeed;

image_index = 1;
alarm[1] = 15;


